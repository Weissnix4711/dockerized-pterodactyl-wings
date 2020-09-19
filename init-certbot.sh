docker run -it --rm --name init-certbot \
	-v "./certbot/conf:/etc/letsencrypt" \
	certbot/certbot certonly --standalone
