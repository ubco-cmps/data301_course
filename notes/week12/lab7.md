# Lab 7: Create and publish your Tableau Dashboard



## Task 0: Fill in the Survey (Required)
In this lab you will prepare and publish the dashboard for your project. Your first step before working on the dashboard is to fill in this [survey](https://ubc.ca1.qualtrics.com/jfe/form/SV_etwwurNao6VTE9w).

The [survey](https://ubc.ca1.qualtrics.com/jfe/form/SV_etwwurNao6VTE9w) will be use for two purposes:
1. To give you access to examples of dashboard from last term projects.
2. To give you access to Tableau online. Tableau online will be used to publish the dashboard you will have produced on Tableau desktop. 

```{warning}
Once you have finished the survey, I will then have to invite you to the site (this will take **at least a day**). After you are invited, you will get an email that looks like this:

<img src="tableau_online.png" width="600px">

Once you have joined, you can then view the examples and follow the steps to publish your workbook.
```

## Task 1: Create your Tableau Dashboard (90%)

In this lab you will be creating a Tableau Dashboard to showcase your DATA 301 Project Dashboard.

The requirements for your Tableau dashboard are:

- Your dashboard should tell a story.
- You must have at least two sheets, and the option to "Show sheets as Tabs" must be checked:

<img src="https://help.tableau.com/current/pro/desktop/en-us/Img/pubilsh_sheets_as_tabs.png" width="600px">

- Details of the Dashboard sheets/tabs
    - The first sheet should describe your dataset, and show us the results of your EDA.
    - The second sheet should answer a research question with some data visualizations.
    - You may have additional sheets if you like
- You are encouraged, though **not required**, to create your plots in Tableau
- You must have at least 2 filters (of any type: dropdown, checkbox, etc...) for your plots
- You must have at least 2 linked plots (if you click on one plot, another plot should update)

### Examples of dashboards from previous years
Here are a few examples of dashboards (**note that I must have invited you to Tableau online before you can access them**):
* [Cancer Cases and Types in Canada (Except QC)](https://us-west-2b.online.tableau.com/#/site/data301/views/CancerCasesandTypesinCanadaexceptQC-/TotalCancerCases?:iid=4)
* [Covid19 - Toronto Public Health](https://us-west-2b.online.tableau.com/#/site/data301/views/Covid19Project6022-Dec2020/EDADashboard?:iid=4)
* [Sample population medical charges](https://us-west-2b.online.tableau.com/#/site/data301/views/Group6015_Milestone_4_or_lab_10/EDADashboard?:iid=5)
* [Analysis on credit card default](https://us-west-2b.online.tableau.com/#/site/data301/views/Project_305Dashboard/DatasetOverviewandDescription?:iid=2)

## Task 2: Publish your Tableau Dashboard (10%)

[Instruction to Publish a workbook](https://help.tableau.com/current/pro/desktop/en-us/publish_workbooks_howto.htm) are reproduced here:

```{warning}
As mentioned earlier, if you have not done so, in order to proceed with publishing your Tableau to our course site, [you MUST first complete this survey](https://ubc.ca1.qualtrics.com/jfe/form/SV_etwwurNao6VTE9w). I will then have to invite you to the site (this will take **at least a day**). After you are invited, you will get an email that looks like this:

<img src="tableau_online.png" width="600px">

Once you have joined, you can then follow the steps to publish your workbook.
```

1. In Tableau Desktop, select **Server > Sign In**. Under "Quick Connect", click Tableau Online - you'll be asked to authenticate with your Tableau account.

2. In Tableau Desktop, open the workbook you want to publish.

3. **Select Server > Publish Workbook.** 

Select "A - Solo Projects" or "B - Group Projects", depending on your project type.

If the **Publish Workbook** option does not appear on the **Server** menu, make sure a worksheet or dashboard tab is active (not the Data Source tab).

4. In the **Publish Workbook** dialog box, select the project, enter a name for the workbook, and add search tags.

Tags help users find related workbooks when they browse the server. Separate tags using a comma or space. To add a tag that contains a space, put the tag in quotation marks.

<img src="https://help.tableau.com/current/pro/desktop/en-us/Img/publish-add-tags.png" width="600px">

5. For **Permissions**, accept the default project settings.

Generally, a site administrator manages permissions on the server. 
If you think your workbook is an exception, work with your administrator to determine the best course of action, and see [Set Permissions as You Publish a Data Source or Workbook](https://help.tableau.com/current/pro/desktop/en-us/publish_workbooks_permissions_add.htm#permissions).

6. For **Data Sources**, select **Edit** and make sure your data is embedded in the workbook.

If you’re publishing an extract and want to set up a refresh schedule, you must select Embed password or Allow refresh access.

If your workbook connects to a Tableau data source, we recommend embedding the password. If you instead choose to prompt users, they'll need additional permissions on the data source.

7. Configure the Variable publishing options.

By default, Tableau Desktop publishes all sheets in a multiple-sheet workbook. 
In the Sheets section of the Publish Workbook dialog box, you can specify which sheets to include. Hiding sheets is useful when you want to publish a dashboard or story without showing the worksheets that were used to create it.

8. Click Publish. We will check to make sure your project number and dashboard is on the online site.

## Tips

1. Don't forget to add text and narrative structure to your dashboard to tell a story about your project.

2. You can re-use content from earlier in your project describing your data, and EDA.

3. If you're stuck, come to office hours or labs!