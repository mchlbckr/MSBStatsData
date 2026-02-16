# Data of Marketing expenses

The dataset contains product-, marketing- and sales data of 235 shoes of
a footwear company. Each entity represents one shoe, listed with its
product data, marketing data and sales data in a total of 14 variables.

## Usage

``` r
marketing_expenses
```

## Format

A tibble with 235 rows and 14 variables:

- marketing_expenses \[dbl\]:

  Expenses for marketing activities for the shoe.

- customers_reached \[dbl\]:

  Estimated number of customers reached by the footwear marketing
  activity of the shoe.

- negative_reactions \[dbl\]:

  Number of negative reactions to the marketing activities of the shoe.

- price \[dbl\]:

  Retail price of the shoe.

- price_segment \[fct\]:

  Price segment of the shoe.

- number_of_sizes \[dbl\]:

  Number of sizes in which the shoe is available.

- target_customer \[fct\]:

  Gender the shoe is intended for.

- rating_testers \[dbl\]:

  Average product rating of the test customers for the shoe.

- rating_customers \[dbl\]:

  Average product rating of the real customers for the shoe.

- color_most_sold \[fct\]:

  Color in which the shoe is selled the most often.

- return_rate \[dbl\]:

  Rate how often the shoe is returned by the customer.

- sales_volume \[dbl\]:

  Number of sales for the shoe.

- rank_rating_customers \[dbl\]:

  Attribute 'rating_customers', divided into ranks for the calculation
  of the correlation coefficient according to Spearman.

- rank_price_segment \[dbl\]:

  Attribute 'price_segment', divided into ranks for the calculation of
  the correlation coefficient according to Spearman.
