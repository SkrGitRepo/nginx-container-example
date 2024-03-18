server {
    listen 80;

    location /client-dev/ {
	alias /usr/share/nginx/html/webchat-client/dev;
        index index.html;
    }

    location /agent-dev/ {
	alias /usr/share/nginx/html/webchat-agent/dev;
        index index.html;
    }
    location /client-stage/ {
	alias /usr/share/nginx/html/webchat-client/stage;
        index index.html;
    }

    location /agent-stage/ {
	alias /usr/share/nginx/html/webchat-agent/stage;
        index index.html;
    }
    location /client-prod/ {
	alias /usr/share/nginx/html/webchat-client/prod;
        index index.html;
    }

    location /agent-prod/ {
	alias /usr/share/nginx/html/webchat-agent/prod;
        index index.html;
    }
}
