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
        $articles = $articleManager->selectAllMovies();
        return json_encode($articles, JSON_PRETTY_PRINT);
    }
    public function getAllGifts(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selectAllGifts();
        return json_encode($articles, JSON_PRETTY_PRINT);
    }
    public function getAllRecipes(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selectAllRecipes();
        return json_encode($articles, JSON_PRETTY_PRINT);
    }
    public function getAllActivities(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selectAllActivities();
        return json_encode($articles, JSON_PRETTY_PRINT);
    }
    public function getAllItem(): string
    {
        $articleManager = new ArticleManager();
        $articles = $articleManager->selectAllTest();
        return json_encode($articles, JSON_PRETTY_PRINT);
    }
}
