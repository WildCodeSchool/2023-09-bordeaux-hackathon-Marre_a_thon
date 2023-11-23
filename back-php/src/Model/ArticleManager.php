<?php

namespace App\Model;

class ArticleManager extends AbstractManager
{
    public const TABLE = 'principal';

    public function selecltAllMovies(): array
    {
        $query = "SELECT * FROM movies INNER JOIN principal ON movies.foreign_key = principal.primary_key";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    
    }
    public function selecltAllGifts(): array
    {
        $query = "SELECT * FROM gifts INNER JOIN principal ON gifts.foreign_key = principal.primary_key";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();

    }
    public function selecltAllRecipes(): array
    {
        $query = "SELECT * FROM recipies INNER JOIN principal ON recipies.foreign_key = principal.primary_key";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }
    public function selecltAllActivities(): array
    {
        $query = "SELECT * FROM activities INNER JOIN principal ON activities.foreign_key = principal.primary_key";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }

}