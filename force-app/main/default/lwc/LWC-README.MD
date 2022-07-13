Lightning Web Components - Events

Scenario
This task explores the concepts of sending events in Lightning Web Components (LWC). Events can be sent up from child to parent and down from parent to child. Both examples will be explored in this task.

Requirements
The objective of this task is to create a LWC where each input from the user is rendered as a list item. When the user clicks on one of the list items, the selected item is displayed to the user separately in a large text.

Step 1: Create two Lightning Web Components
In VS Code, first create a LWC called ‘parentComponent’ and then create a LWC called ‘childComponent’.

Step 2: Parent Template
In the ‘parentComponent’ template, create a lightning input field and a lightning button.
The input field should have the following attributes:
Component – Field/Attribute Value Input Field - Class slds-var-m-bottom_xx-small Input Field – Label Enter text Lightning Button - variant Neutral Lightning Button - label Add

The button should also respond to an onclick event by calling a handler method called addInputToList.

Next, create a template that conditionally renders the text, “You have selected: {input}” (where input is
a variable in the JavaScript). This text renders only if a variable selected is set to true in the JavaScript.
The class of the text should be ‘slds-text-heading_large'.

Next, create a loop that iterates through an array in the JavaScript called list. During each iteration, the
‘childComponent’ is rendered. The child component has a variable called ‘inputItem’ that should be set
to each element of the array during the iteration. The ‘childComponent’ also propagates an event
called ‘inputitemselect’ that should be handled by the parent in a method called ‘handleSelect’.

Step 3: Parent JavaScript
In the ‘parentComponent’ JavaScript file, create a variable called input, and a variable called selected
(which should be initialized to false). Also create an array called list.
The ‘addInputToList’ method should insert the value from the Lightning input field into the list array.
The ‘handleSelect’ method should set the input variable to the value of the detail key of the
‘inputitemselect’ event.

Step 4: Child Template
In the ‘childComponent template’, create a lightning button with the following properties:
Component – Field/Attribute Value
Class slds-var-m-right_x-small
Icon-Name utility:event
The label of the button should be set to the ‘inputItem’ variable from its JavaScript file. The button
should also respond to an onclick event by calling a method ‘fireSelectEvent’.

Step 5: Child JavaScript
The JavaScript for ‘childComponent’ should contain the ‘InputItem’ variable, as well as the
‘fireSelectEvent’ method, which should fire the custom event ‘inputitemselect’. The value of the
event’s detail key should be set to the ‘inputItem’ variable.
Notes: Ensure that JavaScript best practices are followed and that the correct decorators are used.

The JavaScript for ‘childComponent’ should contain the ‘InputItem’ variable, as well as
the ‘fireSelectEvent’ method, which should fire the custom event ‘inputitemselect’. The value of the
event’s detail key should be set to the ‘inputItem’ variable.

Interview Questions

1. How can you display HTML components conditionally?
2. How can we bind data in LWC?
3. How can we pass data from HTML to the JavaScript controller?
4. How do components communicate with each other?
5. Which design pattern are you following when communicating between the different
   components in your solution?
6. When do we use the @api with a function or a property?

Resources:
https://blogs.perficient.com/2021/10/20/parent-child-communication-in-lwc/
https://trailhead.salesforce.com/content/learn/projects/communicate-between-lightning-web-components/communicate-from-child-to-parent
https://www.sfdcblogs.com/post/how-to-fetch-inputs-in-lightning-web-components
