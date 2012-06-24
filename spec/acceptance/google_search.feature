# encoding: utf-8
Feature: Google 検索
  Background:
    Given Googleページに移動

  Scenario: キーワード検索し、ページ移動
    When 'fit c2' で検索
    When 'Fit - Cunningham & Cunningham, Inc.' のリンクをクリック
    Then 'Great software requires collaboration and communication.' の文字がページに含まれる
