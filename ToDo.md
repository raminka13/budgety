## To Do

- **Splash screen**

  - A simple page with the name of your app (yes, you need to choose one), and links to the sign up and log in pages.

- **Sign up and log in pages**

  - The user should be able to register in the app with full name, email and password (all mandatory).

  - The user can log into the app using email and password.

  - If the user is not logged in, they can't access pages that require the user to be logged in (all the pages described below).

- **Home page (categories page)**
  - When the user logs in, they are presented with the categories page.
  <!-- - For each category, the user can see their name, icon and the total amount of all the transactions that belongs to that category. -->
  - When the user clicks (or taps) on a category item, the application navigates to the transactions page for that category.
  <!-- - There is a button "add a new category" at the bottom that brings the user to the page to create a new category. -->

- **Transactions page**
  <!-- - For a given category, the list of transactions is presented, ordered by the most recent. -->
  - At the top of the page the user could see the total amount for the category (sum of all of the amounts of the transactions in that category).
  <!-- - There is a button "add a new transaction" at the bottom that brings the user to the page to create a new transaction. -->
  - When the user clicks on the "Back" button (<), the user navigates to the home page.

- **Add a new category page**
  - The user fills out a form to create a new category, indicating their name and icon (both mandatory).
  - The user click (or taps) the "Save" button to create the new category, and is taken to the home page on success.
  - When the user clicks on the "Back" button (<), the user navigates to the home page.

- **Add a new transaction page**
  <!-- - The user fills out a form to create a new transaction with:
    - name (mandatory)
    - amount (mandatory)
    - categories (mandatory at least one) -->
  - The user click (or taps) the "Save" button to create the new transation, and is taken to the transactions page for that category.
  - When the user clicks on the "Back" button (<), the user navigates to the transactions page for that category.
