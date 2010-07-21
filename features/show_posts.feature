Feature: Show Posts

  Scenario: Home Page
    Given 7 approved posts exist
    When I go to the home page
    Then I should see 5 posts
    And I should see 7 sections
    And I should see page's keywords
    And I should see "Next" 

    When I follow "Next"
    Then I should see 2 posts
    And I should see page's keywords
    And I should see "Previous" 

  Scenario: Textile
    Given a section exists with name: "About"
    And a post exists with title: "Textile", body: "Simple *textile*", section: the section, tag_list: "test, cucumber"
    When I go to Textile's post page
    Then I should see "textile" within "strong"
    And I should see page's keywords

  Scenario: RSS
    Given 5 approved posts exist
    When I visit "/posts.rss"
    Then I should see 5 rss items
