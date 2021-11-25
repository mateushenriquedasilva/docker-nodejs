# Qual versão eu quero utilizar
FROM node:alpine
# Qual diretório eu quero trabalhar
WORKDIR /usr/app
# Copiar arquivos package para dentro da minha maquina
COPY package*.json ./
# Tendo o package.json podemos rodar o npm install
RUN npm install
# Colocar todos os arquivos dentro da minha maquina
COPY . . 
# A porta que meu servidor vai acessar
EXPOSE 3000
# Comando para iniciar minha aplicação
CMD ["npm", "start"]


# ----------------------------------
# Criar o container ---
# docker build -t nome .
# Rodar o container ---
# docker run -p 3000:3000 -d nome
# -p(porta), -d(container)
# docker ps
# docker stop id