@add-to-cart
Feature: Add to Cart 

   Feature description: As a POC owner I want to add a product to my cart 
                        w/ the correct value. 



   @MG-275_02
    Scenario: Adding a product to cart
        Given I have no item in the cart
        And I am at the PDP page
        And I have set a quantity for this product
        When I add the product to the cart
        Then I should see the cart basket displays the quantity I added
        And I should see the product on the cart page

   @MG-275_03
    Scenario: Checking notification function: OK
        Given I have added a product to the cart
        When I click on the 'OK' button from the cart notification
        Then I should see the notification be closed
        And I should stay at the pdp page

   @MG-275_04
    Scenario: Checking notification function: Proceed to Checkout 
        Given I have added a product to the cart
        When I click on the 'Proceed To Checkout' button from the cart notification
        Then I should be taken to the checkout page

   @MG-275_05
   Scenario: Checking added to cart notification visible
        Given I am at the PDP page 
        When I add the product to the cart
        Then I should see the added to cart notification message briefly

        When I click to add the product again to cart
        Then I should see the quantity updated notification message briefly