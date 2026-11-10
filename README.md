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
| Arthur | Surveillance système et conflit, réponses aux questions 1 à 3 |
| Ali    | Audit des utilisateurs locaux et conflit, réponses aux questions 4 à 6|
| Sonny  | Mise en places des rulesets sur les branches, initalisation readme, monitoring, réponses aux question 7 à 8 |

---

## 3. Technologies utilisées

On est partis sur Ubuntu, donc des scripts en bash

---

## 5. Installation et exécution

### Cloner le dépôt


### Scripts disponibles

| Script / Commande | Description |
|---|---|
|  ./audit.sh | Tâches étudiant 2 |
|  ./service-monitoring.sh | Tâches étudiant 3 |
|  ./surveillance.sh | Tâches étudiant 1 |

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

4. Quelle différence entre correction classique et correction urgente de production ? Ali

Une correction classique, c'est quand on corrige un bug pendant le développement, sur `develop`. Un hotfix, c'est quand il y a un problème urgent sur la version en production, donc on part de `main` pour le corriger rapidement.

5. Pourquoi répercuter une correction de production dans les développements en cours ? Ali

Pour éviter que le même bug revienne dans les prochaines versions. Comme ça, on garde aussi `develop` à jour avec les corrections faites sur `main`.

6. Quel est le rôle d’une branche de release ? ALi

La branche `release` sert à préparer une version avant de la mettre en production. On fait les derniers tests, on corrige les petits problèmes s'il y en a, puis on fusionne dans `main` quand tout est prêt.

7. Comment GitHub Projects et les Issues facilitent-ils organisation et traçabilité ? Sonny
Github Projects et les issues permettent de faciliter la traçabilité car on peut voir tous 
les commits lié à la fonctionnalité que l'on développe si bien-sûr on ajoute le numéro de l'issue dans le commit 
Reponse : Sonny

8. Comment retrouver l’origine d’une modification dans l’historique GitHub ? Sonny
Grace à l'identifiant du commit, ou bien avec Git Blame sur github, ou bien en faisant git log -- le nom du fichier ou un git show (le commit)
Reponse : Sonny


## Audit des utilisateurs locaux — Étudiant 2

J'ai réalisé le script `scripts/audit.sh` qui permet d'afficher les utilisateurs locaux du système.

Le script récupère les informations dans `/etc/passwd` et affiche :
- Le nom de l'utilisateur
- Son UID et son GID
- Son répertoire personnel
- Son shell
- Le nombre total de comptes trouvés

### Exécution

Pour lancer le script sur Linux :

```bash
bash scripts/audit.sh
```

### Tests

J'ai testé le script pour vérifier qu'il affiche correctement les informations des utilisateurs et le nombre total de comptes.

### Organisation Git

J'ai travaillé sur la branche `feature/audit-local`, liée à l'Issue #2.

J'ai effectué plusieurs commits pour ajouter progressivement les fonctionnalités, puis créé une Pull Request vers `develop` pour faire vérifier mon travail par mes collègues.

## Conflit lors de la release avec le github actions

Il était impossible de merge la release dans la main du à l'echec du github actions 

Solution : Suppression du github actions