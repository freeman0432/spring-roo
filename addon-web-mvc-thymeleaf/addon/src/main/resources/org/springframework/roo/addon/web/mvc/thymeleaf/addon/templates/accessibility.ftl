<!DOCTYPE html>
<html lang="en" data-layout-decorate="~{layouts/default-layout}">

  <head>

    <title data-th-text="${r"#{"}label_accessibility}">Accessibility - Spring Roo application</title>

  </head>

  <#if userManagedComponents?has_content && userManagedComponents["body"]??>
    ${userManagedComponents["body"]}
  <#else>
  <body id="body">
    <header role="banner">
      <!-- Content replaced by layout of the page displayed -->
    </header>

    <!-- Main container -->
    <div class="container bg-container">
      <!-- Content -->
      <!--
        Only the inner content of the following tag "section" is included
        within the template, in the section "content"
      -->
      <section data-layout-fragment="content">

        <div class="container-fluid content">
          <div class="box-center">
            <h2 data-th-text="${r"#{"}label_accessibility}">Accessibility</h2>
            <p class="lead" data-th-text="${r"#{"}label_accessibility_lead}">Accessibility policy application</p>
            <p data-th-utext="${r"#{"}label_accessibility_text}">
             Spring Roo Application is committed to ensuring the accessibility of
             its web content to people with disabilities. All of the content on
             our website will meet <a href="https://www.w3.org/TR/WCAG/" target="_blank"
             title="Will open in a new window to the page https://www.w3.org/TR/WCAG/">
             W3C WAI's Web Content Accessibility Guidelines</a> 2.0, Level AA
             conformance. Any issues should be reported to
             <a href="mailto:springroo@disid.com?Subject=Spring%20Roo%20Accessibility"
             target="_top">springroo@disid.com</a>.
             The technologies that is depended to access the accessible content are HTML, CSS and Javascript.
            </p>
          </div><!-- /box-center -->
        </div>

      </section>
     <!-- /content -->
    </div>
    <!-- container -->

    <footer class="container">
      <!-- Content replaced by layout of the page displayed -->
    </footer>

    <!-- JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so that the pages load faster -->
    <!-- JavaScript loaded by layout of the page displayed -->
    <!--
         Only the inner content of the following tag "javascript" is included
         within the template, in the div "javascript"
      -->
    <div data-layout-fragment="javascript">
    </div>

  </body>
  </#if>

</html>