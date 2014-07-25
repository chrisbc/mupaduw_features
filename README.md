# some_dumb_features

this project contains GWT feature files (suited to jbehave I expect) for some_dumb project.

Here's an article about using GWT for Android apps...

 * http://www.softwaretestingmagazine.com/knowledge/testing-android-apps-with-robotium-and-jbehave/

##Workflow

 1. The tester & the client write feature files using a GWT syntax. 
 2. The developers check out new feawturess & then write step code to exercise these against the App.
 3. In some cases, devs will make changes to feature text (e.g to make things more reusable/logical etc), if so then they must ask client/tester to review and accept them.
 4. Feature files, step code, and application code are in kept sync for each release.
