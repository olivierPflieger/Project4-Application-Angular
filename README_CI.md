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

Application disponible sur http://localhost:4200


## DEMARRER ANGULAR - DOCKER

Au préalable j'ai ajouté :

- dockerfile (build + Nginx)
- docker-compose
- dockerignore

Se mettre à la racine du projet Angular :

```
docker compose up -d
```

Le site est disponible à l'adresse http://localhost:4200

### Pour recompiler docker compose

Pour recompiler docker compose

```
docker compose down
docker compose up -d
```
ATTENTION : Ca ne reconstruit pas l'image !
Pour reconstruire l'image, supprimer l'image entre les 2 commandes

