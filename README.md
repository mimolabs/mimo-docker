# Running MIMO as a standalone service

```
docker-compose run api rake db:create
```

```
docker-compose run api rake db:migrate
```

```
docker-compose run api rake production:create_admin
```

```
docker-compose run api rake production:create_app
```

```
docker-compose up
```
