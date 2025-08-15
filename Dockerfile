# Sử dụng image nginx chính thức
FROM hub.nexdev.net/base/nginx/nginx:1.29-alpine-25h2 AS builder

# Xóa file mặc định của nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy toàn bộ nội dung workspace vào thư mục web root
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Lệnh khởi động nginx
CMD ["nginx", "-g", "daemon off;"]
