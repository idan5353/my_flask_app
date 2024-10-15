# תמונה בסיסית
FROM python:3.9-slim

# הגדרת תיקיית העבודה
WORKDIR /app

# העתקת קבצים לתוך התמונה
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py ./

# חשיפת הפורט
EXPOSE 5000

# הפעלת האפליקציה
CMD ["python", "app.py"]
