<!DOCTYPE html>
<html lang="en" data-layout-decorate="~{layouts/default-layout}">
  <head>
    <title data-th-text="${r"#{"}label_create_entity(${r"#{"}${entityLabel}})}">
    Create ${entityName} - ${projectName} - SpringRoo Application</title>
    <!-- DateTimePicker -->
    <link rel="stylesheet" type="text/css"
      href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.4/build/jquery.datetimepicker.min.css"
      data-th-href="@{/webjars/datetimepicker/build/jquery.datetimepicker.min.css}"/>
  </head>
<#if userManagedComponents?has_content && userManagedComponents["body"]??>
  ${userManagedComponents["body"]}
<#else>
  <body id="body">

    <header role="banner">
      <!-- Content replaced by layout of the page displayed -->
    </header>

    <!-- CONTAINER -->
    <div class="container bg-container">


      <!-- CONTENT -->
      <section data-layout-fragment="content">
        <div class="container-fluid content">
  	<!--
  	  Only the inner content of the following tag "section" is included
  	  within the template, in the section "content"
  	-->

          <h1 data-th-text="${r"#{"}label_edit_entity(${r"#{"}${entityLabel}})}">Edit ${entityName}</h1>

          <#assign dconfig=detail.configuration>
          <!-- FORM -->
          <form class="form-horizontal validate" method="POST" data-th-object="${modelAttribute}"
            data-th-action="${r"${"}(#mvc.url('${dconfig.mvcUrl_create}')).buildAndExpand(${modelAttributeName}.${identifierField})}">

            <fieldset id="containerFields">
              <legend data-th-text="${r"#{"}label_data_entity(${r"#{"}${detail.configuration.entityLabel}})}">${detail.entityName} data </legend>

              <#if detail.userManaged>
                ${detail.codeManaged}
              <#else>
                <div class="form-group has-error has-feedback" data-z="${detail.z}" id="${detail.entityItemId}"
                    data-th-class="form-group">
                    <div class="col-md-6">
                      <select id="${detail.fieldName}" name="${detail.fieldName}Ids"
                        class="form-control dropdown-select-ajax"
                        data-allow-clear="true"
                        data-ajax--cache="true"
                        data-ajax--data-type="json"
                        data-ajax--delay="250"
                        multiple="multiple"
                        data-data-ajax--url="${r"${"}(#mvc.url('${dconfig.mvcUrl_select2}')).build()}"
                        data-data-placeholder="${r"#{"}${select2_placeholder}}">
                          <option data-th-each="item: *{${detail.pathStringFieldNames}}"
                             selected="true"
                             data-th-text="${r"${"}item}" data-th-value="${r"${"}item.${dconfig.identifierField}}">Another product to select</option>
                      </select>
                    </div>
                </div>
              </#if>
              </fieldset>

              <!-- buttons form -->
              <div class="form-group">
                <div class="col-md-9 col-md-offset-3">
                    <button type="reset" class="btn btn-default"
                      onclick="location.href='list.html'"
                      data-th-onclick="'location.href=\'' + ${r"${"}(#mvc.url('${mvcUrl_list}')).build()} + '\''"
                      data-th-text="${r"#{"}label_reset}">Cancel</button>
                    <button type="submit" class="btn btn-primary" data-th-text="${r"#{"}label_submit}">Save</button>
                </div>
              </div>

          </form>
          <!-- /FORM -->

        </div>

      </section>
      <!-- /CONTENT -->
  </div>
  <!-- /CONTAINER -->

  <footer class="container">
    <!-- Content replaced by layout of the page displayed -->
  </footer>

  <!-- JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so that the pages load faster -->
  <div data-layout-fragment="javascript">
  </div>

    <!-- Application -->
    <script type="text/javascript" charset="utf8"
      src="../../static/public/js/main.js"></script>

</body>
</#if>
</html>
