<?php

namespace App\Controller;

use App\Model\ArticleManager;
use App\Controller\AbstractAPIController;

class AjaxController extends AbstractAPIController
{

    public function example(): string
    {
        return json_encode([
            'message' => 'Hello wilder !'
        ]);
    }

    public function getAllMovies(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selecltAllMovies();
        return json_encode($articles);
    }
    public function getAllGifts(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selecltAllGifts();
        return json_encode($articles);
    }
    public function getAllRecipes(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selecltAllRecipes();
        return json_encode($articles);
    }
    public function getAllActivities(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selecltAllActivities();
        return json_encode($articles);
    }
}
