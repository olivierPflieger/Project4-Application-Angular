## DEMARRER ANGULAR

Installer Angular CLI 21

Se mettre à la racine du projet Angular :

```
npm install
```

Puis

```
ng serve
```

## DEMARRER ANGULAR - DOCKER

Au préalable j'ai ajouté :

- dockerfile (build + Nginx)

- docker-compose

- dockerignore

Se mettre à la racine du projet Angular :

```
docker compose up -d
```

Le site est disponible à l'adresse http://localhost:8080

### Pour recompiler docker compose

    docker compose down

=> supprimer l'image  

```
docker compose up
```


