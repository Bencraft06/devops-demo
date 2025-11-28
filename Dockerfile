# 1. Image de base
FROM python:3.10-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers de ton projet
COPY requirement.txt .

# 4. Installer les dépendances
RUN pip install -r requirement.txt

COPY . .

EXPOSE 5000

# 5. Lancer l'application
CMD ["python", "app.py"]
