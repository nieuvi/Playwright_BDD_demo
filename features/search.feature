Feature: Google search
    As a user, I want to be able to search for information on Google, so that I can find the information I need.
    @demo
    Scenario: Search for a "<information>"
        Given User is on the Google homepage "<num>"
        When user fills "<search information>" in the search input
        And user clicks on "Tìm trên Google" button "<id>"
        Then the "<searched results>" are displayed

        Examples:
            | num | information | search information | id | searched results |
            | 1 | product  | Apple  |1| Apple  |
            | 2 | link  | link  |2| link  |
            | 3 | location  | TMA Bình Định  |3| TMA info  |

    @image
    Scenario: Search for a product by image
        Given User is on the Google homepage <id>
        When user clicks on the "Tìm kiếm bằng hình ảnh" button <id>
        And user adds "<image>" into search input
        Then the searched results are displayed <id>

        Examples:
            | id | image | id | id |
            | 4 | image path  | 4 | 4 |
            | 5 | image link  | 5 | 5 |

    @first
    Scenario: Access on the first searched page 
        Given User accesses on the Google homepage 
        When user fills search information
        And user click "Xem trang đầu tiên tìm được" button
        Then user accesses on the first searched page