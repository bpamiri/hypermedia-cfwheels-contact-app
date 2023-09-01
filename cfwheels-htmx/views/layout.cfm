<cfoutput>
<!doctype html>
<html lang="">
	<head>
		<title>Contact App</title>
		#csrfMetaTags()#
		#styleSheetLinkTag("missing.min,site")#
		#javaScriptIncludeTag("htmx,_hyperscript,rsjs-menu")#
    <script defer src="https://unpkg.com/alpinejs@3/dist/cdn.min.js"></script>
	</head>

	<body hx-boost="true">
		<main>
			<header>
					<h1>
							<all-caps>contacts.app</all-caps>
							<sub-title>A Demo Contacts Application</sub-title>
					</h1>
			</header>
			#flashMessages()#
			#includeContent()#
		</main>
	</body>
</html>
</cfoutput>
