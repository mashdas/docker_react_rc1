from node:alpine as builder

copy package.json . 

run npm install

copy . .

run npm run build

from nginx
copy --from=builder /app/build /usr/share/nginx/html