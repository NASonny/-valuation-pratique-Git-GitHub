# Evaluation-pratique-Git-GitHub

## 1. Présentation du projet

### Description

Le projet :
- Fonctionnalité 1 (étudiant 1): script affichant des informations sur l’utilisation du
processeur, de la mémoire et des disques.
- Fonctionnalité 2 (étudiant 2): script listant les comptes utilisateurs locaux et des informations utiles à
un contrôle administratif
- Fonctionnalité 3 (étduiant 3): script contrôlant l’état de services définis et produisant un
compte rendu. Facultatif en binôme.

---

## 2. Membres du projet et responsabilités

| Nom | Prénom | Pseudonyme GitHub | Rôle |
|---|---|---|---|
| VIMONT | Arthur | @NKZ05 | Étudiant 1 |
| AL ABED | Ali | @Ali03785845 | Étudiant 2 |
| NAIDJA | Sonny | @NASonny | Étudiant 3 |

### Répartition des responsabilités

| Membre | Responsabilités |
|---|---|
| Arthur |  |
| Ali    |  |
| Sonny  | Mise en places des rulesets sur les branches, initalisation readme, taches étudiant 3 |

---

## 3. Technologies utilisées

On est partis sur Ubuntu, donc des scripts en bash

---

## 5. Installation et exécution

### Cloner le dépôt


### Scripts disponibles

| Script / Commande | Description |
|---|---|
|  |  |
|  |  |
|  |  |

---

### Workflow Git

Nous utilisons un workflow basé sur les branches :

- `main` : branche principale contenant les versions stables.
- `develop` : branche de développement et d'intégration.
- `feature/*` : branches dédiées aux nouvelles fonctionnalités.
- `fix/*` : branches dédiées aux corrections de bugs.

## QUESTION

1. Quel est l’intérêt de séparer développements en cours et versions stables ? Arthur Vimont

Ça permet de continuer à travailler sur le projet sans risquer de casser une version qui fonctionne déjà. Comme ça on peut faire nos modifications, les tester et corriger les problèmes avant de les ajouter à la version stable.

2. Pourquoi imposer une revue de code avant intégration ? Arthur Vimont

Ça permet qu'une autre personne vérifie notre travail avant de l'ajouter au projet. Comme ça on peut repérer des erreurs qu'on aurait pas forcément vues nous-mêmes et éviter d'ajouter du code qui pourrait poser problème par la suite.

3. Quelles situations provoquent un conflit Git et pourquoi sa résolution n’est-elle pas toujours automatique ? Arthur Vimont

Un conflit Git peut arriver quand plusieurs personnes modifient la même partie d'un fichier sur des branches différentes. Git ne peut pas toujours régler le problème tout seul car il ne sait pas quelle modification garder. Il faut donc vérifier les changements et choisir quoi conserver pour que tout fonctionne correctement.

4. Quelle différence entre correction classique et correction urgente de production ?
5. Pourquoi répercuter une correction de production dans les développements en cours ?
6. Quel est le rôle d’une branche de release ?
7. Comment GitHub Projects et les Issues facilitent-ils organisation et traçabilité ?
8. Comment retrouver l’origine d’une modification dans l’historique GitHub ?