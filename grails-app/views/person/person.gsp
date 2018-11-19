<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="my-main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Top Sauce</h1>
			<ul>
				<li>Hot Sauce: <g:meta name="app.version"/></li>
				<li>Trap Sauce: <g:meta name="app.grails.version"/></li>
				<li>SweetBaby Sauce: ${GroovySystem.getVersion()}</li>
				<li>Soul Sauce: ${System.getProperty('java.version')}</li>
				<li>Granny Sauce: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Sista Sauce: ${grailsApplication.controllerClasses.size()}</li>
				<li>Uptop Sauce: ${grailsApplication.domainClasses.size()}</li>
				<li>Mystery Sauce: ${grailsApplication.serviceClasses.size()}</li>
				<li>My Drip: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>All Sauce</h1>
			<ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>Profile</h1>
			<ul><li>Last Name: <g:fieldValue bean="${person}" field="lastName"/></li><br/>
<li>First Name: <g:fieldValue bean="${person}" field="firstName"/></li><br/>
<li>Age: <g:fieldValue bean="${person}" field="age"/></li><br/>
<g:set var="booleanValue" value="${person.me}"/>
<li>Me:<g:formatBoolean boolean="${booleanValue}" /></li><br/>
</ul><br/>
<h2>My Favorite albums of 2018</h2>
<ul>
<g:each bean="${person}" feild="albums" in="${person.albums}" var="album">
<li>${album}</li><br/>
</g:each>
</ul>

			<%--<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		--%></div>
	</body>
</html>