# Initialize parent module dependencies
go mod tidy

# Run the main program
go run main.go

npm init -y

npm install express mysql2 bcryptjs jsonwebtoken dotenv

pip install -r requirements.txt

npm install axios react-router-dom tailwindcss

git clone https://github.com/Studio-42/elFinder.git
cd elFinder.git

rsync -avz /var/www/html/ user@backup_server:/path/to/backup/

mkdir web4-cpanel
cd web4-cpanel

mkdir backend
cd backend

npx create-react-app frontend
cd frontend

git clone https://github.com/QUBUHUB-incs/AgbakoAI.git
cd AgbakoAI

./config.sh --url https://github.com/QUBUHUB-incs/AgbakoAI --token BH6MBWC5MQDJJEF7AG474WTIEKNEM
curl -o actions-runner-linux-arm64-2.323.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.323.0/actions-runner-linux-arm64-2.323.0.tar.gz

echo "9cb778fffd4c6d8bd74bc4110df7cb8c0122eb62fda30b389318b265d3ade538  actions-runner-linux-arm64-2.323.0.tar.gz" | shasum -a 256 -c

tar xzf ./actions-runner-linux-arm64-2.323.0.tar.gz

pip install speechrecognition transformers pyttsx3 torch
pip install fastapi uvicorn torch
pip install fastapi uvicorn torch
uvicorn neo_server_real:app --reload --host 0.0.0.0 --port 8000
uvicorn neo_server_real:app --reload --host 0.0.0.0 --port 8000
# For Python dependencies
pip install -r requirements.txt

# For Node.js dependencies
npm install

git status
git add agbakoAI.py .gitignore requirements.txt  # add more files if needed
git commit -m "Initial commit of AgbakoAI project files"
git push origin master
