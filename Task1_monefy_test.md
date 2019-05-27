# Monefy Tests

![Mind Map](https://github.com/maristn/monefy_tests/blob/master/monefy.png)


First, I mapped all the paths to understand the features of the application. 
I will focus on the most important features. I would prioritize test execution in the following order:

Expense
-----------
- Create a new Expense with valid information
- Create a new Expense with invalid information
> Example: Insert values = 0, -5, special characters etc. 
- Assure that it's possible to create a new Expense with any categories and payment methods
- Check if the expenses are calculated on Balance correctly
- Check if a new Category can be used in the Expense creation
- Check if the category percentage was updated

Income
---------
- Create a new Income with valid information
- Create a new Income with invalid information
> Example: Insert values = 0, -5, special characters etc. 
- Assure that it's possible to create a new Income with any categories and payment methods.
- Check if the incomes are calculated on Balance correctly
- Check if a new Category can be used in the Expense creation
- Check if the category percentage was updated

Balance
----------
- Check if the balance is calculated correctly
- Check if it's possible to see the expenses and incomes by category
- Check if it's possible to edit expenses/incomes

Transfer
----------
- Create a new transfer
- Find this transfers on Balance

Categories (Icons on graphic)
--------------
- Check if the percentage of categories are displayed correctly.
- Check if it's possible to create a new Expense clicking on an category icon

Menu >> Categories
-------------------
- Create new Categories for Expenses/Incomes (Monefy Pro)
- Edit Categories(Monefy Pro)
- Disable a category, it should disappear from categories icons on the graphic and from the first options when a new Expense/Income category is added

> (I'm not sure if this behavior is correct, so I will report the steps to your evaluation:)

**If the user merges one category with another, the category icon is only accessible if his account is "Monefy Pro".**

**Pre-reqs:** 
iPhone 6 - Version 12.2 
Have one expense for Pets and one expense for Toiletry

**Steps**
- 1 - Menu >> Categories >> Toiletry
- 2 - Click on the option "Merge"
- 3 - Select the category Pets
- 4 - Go back to the main page: the category Toiletry disappears from categories icons on the graphic. 
(Now, I decided that merging these two categories is a bad idea and I will try to bring Toiletry back again.)
- 5 - Balance >> Pets
- 6 - Select the expense that was Toiletry before the merge
- 7 - Click on "Choose Category"
- 8 - Click on "+" to view another category options
- 9 - Select the Toiletry icon

**Result:** The "Monefy Pro" page is displayed.

**Expected result:** If the category Toiletry was available, it's possible to add to the main categories again before merge.

Accounts
-----------
- Create a new Account
- Edit an Account
- Merge Account
- Disable Account
- Create a New Transfer
- Disable an Account, it should disappear from "Filters" and should not be an option when a new Income is added

Settings
----------
- Unlock Monefy
- Enable/Disable Budget mode
- Enable/Disable Carry over
- Enable/Disable Dark theme
- Select Language, assure that everything is translated
- Change "First day of week" field
- Change "First day of month" field
- Add a passcode protection
- Review application
- Export to file
- See information in "About Monefy"
- Enable/Disable Google Drive synchronization
- Enable/Disable Dropbox synchronization
- Create data backup
- Restore data
- Clear data

Filter
------
- Check if the filters are working correctly.

Currencies
--------------
- Add new currencies
