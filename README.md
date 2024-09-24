Projet de CI/CD avec GitLab pour une application Maven conteneurisée
Ce projet démontre la mise en place d'un pipeline CI/CD complet pour une application Java/Maven, en utilisant GitLab et Docker. Voici les principales étapes du projet :

1. Clonage et migration du repository
Cloner un mini-projet existant depuis un repository GitHub.
Pousser le code cloné vers un nouveau repository sur GitLab.

2. Conteneurisation de l'application
Créer un Dockerfile à la racine du projet.
Le Dockerfile décrit les étapes nécessaires pour construire l'image Docker de l'application.

3. Configuration du pipeline CI/CD
Créer un fichier .gitlab-ci.yml à la racine du projet.
Définir trois étapes principales dans le pipeline : build, test, et deploy.

4. Détails du pipeline CI/CD
Build : Compilation et packaging de l'application Maven.
Test : Exécution des tests unitaires et d'intégration.
Deploy : Construction de l'image Docker et push vers Docker Hub.

5. Intégration avec Docker Hub
Configurer les variables d'environnement dans GitLab (DOCKER_USERNAME et DOCKER_PASSWORD) pour permettre l'authentification sécurisée avec Docker Hub.
Utiliser ces credentials dans l'étape de déploiement pour pousser l'image Docker construite vers Docker Hub.

6. Automatisation
Le pipeline s'exécute automatiquement à chaque push sur le repository GitLab.
Chaque étape du pipeline est exécutée dans l'ordre défini, assurant ainsi la qualité et le déploiement automatique de l'application.
Cette approche permet une intégration et un déploiement continus de l'application, en automatisant les processus de build, test, et déploiement, tout en assurant la conteneurisation de l'application pour une portabilité et un déploiement cohérents dans différents environnements.