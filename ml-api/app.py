from flask import Flask, request, jsonify
import joblib
import pandas as pd

app = Flask(__name__)
model = joblib.load("heart_model.pkl")

# Must match the training DataFrame column order
FEATURE_NAMES = [
    "age", "sex", "cp", "trestbps", "chol", "fbs",
    "restecg", "thalach", "exang", "oldpeak",
    "slope", "ca", "thal"
]

@app.route("/predict", methods=["POST"])
def predict():
    data = request.get_json()

    # Validate incoming data
    missing = [f for f in FEATURE_NAMES if f not in data]
    if missing:
        return jsonify({"error": f"Missing fields: {', '.join(missing)}"}), 400

    # Wrap input as DataFrame with correct feature names
    X = pd.DataFrame([[data[f] for f in FEATURE_NAMES]], columns=FEATURE_NAMES)

    prediction = model.predict(X)[0]

    return jsonify({
        "prediction": int(prediction),
        "message": "High Risk" if prediction == 1 else "Low Risk"
    })

if __name__ == "__main__":
    app.run(debug=True, port=5000)

