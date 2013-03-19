# encoding: utf-8
Feature:
  Scenario: 猫を数える
    Given 大きな黒い猫が2匹いる
    Given 小さな白い猫が1匹いる
    Given 小さな黒い猫が1匹いる
    Given 大きな茶色い猫が2匹いる
    Then  大きな猫が合計4匹いること
    Then  小さな猫が合計2匹いること
    Then  黒い猫が合計3匹いること
    Then  白い猫が合計1匹いること
