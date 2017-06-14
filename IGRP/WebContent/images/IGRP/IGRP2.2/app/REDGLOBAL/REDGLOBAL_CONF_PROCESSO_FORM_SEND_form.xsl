<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="xml/REDGLOBAL_CONF_PROCESSO_FORM_SEND_form.xml" --><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">
<xsl:call-template name="home-top-inc"/>

		  <!-- CONF_PROCESSO CONFIGURACAO PROCESSO FORM_SEND REGISTAR/EDITAR MESS_SEND_TASK -->

		  <!-- START YOUR CODE HERE -->

			<!--PAGE TITLE-->
	  <div class="box-content">

		  <xsl:call-template name="page-title">
			 <xsl:with-param name="title" select="rows/content/title" />
		  </xsl:call-template>

		  <!--NOTIFICATION MESSAGES-->
		  <xsl:apply-templates mode="notif_messages" select="rows/content/messages" >
			 <xsl:with-param name="class" select="'notification'"/>
		  </xsl:apply-templates>


		  <!--START FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/form/tools-bar" /><div class="box-content"><form action="#" method="post" id="formular_default" name="formular_default" class="default_form" enctype="multipart/form-data"><!--HIDDEN FIELDS--><xsl:apply-templates mode="form-hidden" select="rows/content/form/value" /><label><span><xsl:value-of select="rows/content/form/label/processo"/></span><input type="text" name="{rows/content/form/value/processo/@name}" value="{rows/content/form/value/processo}"  class="" maxlength="150" /></label><label><span>(*) <xsl:value-of select="rows/content/form/label/code"/></span><input type="text" name="{rows/content/form/value/code/@name}" value="{rows/content/form/value/code}"  class="required" maxlength="20" /></label><label><span>(*) <xsl:value-of select="rows/content/form/label/name"/></span><input type="text" name="{rows/content/form/value/name/@name}" value="{rows/content/form/value/name}"  class="required" maxlength="100" /></label><label><span><xsl:value-of select="rows/content/form/label/description"/></span><textarea name="{rows/content/form/value/description/@name}"  class=""><xsl:value-of select="rows/content/form/value/description"/></textarea></label><label><span><xsl:value-of select="rows/content/form/label/priority"/></span><select name="{rows/content/form/list/priority/@name}" class=""><xsl:for-each select="rows/content/form/list/priority/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/tempos" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><label><span><xsl:value-of select="rows/content/form/label/time_unity"/></span><select name="{rows/content/form/list/time_unity/@name}" class=""><xsl:for-each select="rows/content/form/list/time_unity/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span><xsl:value-of select="rows/content/form/label/optimal_time"/></span><input type="number" name="{rows/content/form/value/optimal_time/@name}" value="{rows/content/form/value/optimal_time}"  class="number" maxlength="22" /></label><label><span><xsl:value-of select="rows/content/form/label/warn_time"/></span><input type="number" name="{rows/content/form/value/warn_time/@name}" value="{rows/content/form/value/warn_time}"  class="number" maxlength="22" /></label><label><span><xsl:value-of select="rows/content/form/label/limit_time"/></span><input type="number" name="{rows/content/form/value/limit_time/@name}" value="{rows/content/form/value/limit_time}"  class="number" maxlength="22" /></label><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/repeticoes" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><label><span><xsl:value-of select="rows/content/form/label/flag_multi"/></span><select name="{rows/content/form/list/flag_multi/@name}" class=""><xsl:for-each select="rows/content/form/list/flag_multi/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span><xsl:value-of select="rows/content/form/label/multi_flow"/></span><select name="{rows/content/form/list/multi_flow/@name}" class=""><xsl:for-each select="rows/content/form/list/multi_flow/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/origems" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><!--INICIO DA TABELA--><div class="simple-table"><table rel="T_origems"><!--CABECALHO DA TABELA--><thead><tr><th><xsl:value-of select="rows/content/form/table/origems/label/etapa_orig"/></th><th><xsl:value-of select="rows/content/form/table/origems/label/tipo_orig"/></th><th><xsl:value-of select="rows/content/form/table/origems/label/execucao_orig"/></th></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/form/table/origems/value/row"><xsl:variable name="pos" select="(position()+1) mod 2"/><tr class="IGRP_contextMenu"><td class="table_row{$pos}"><xsl:value-of select="etapa_orig" /></td><td class="table_row{$pos}"><xsl:value-of select="tipo_orig" /></td><td class="table_row{$pos}"><xsl:value-of select="execucao_orig" /></td></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/destinos" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><!--INICIO DA TABELA--><div class="simple-table"><table rel="T_destinos"><!--CABECALHO DA TABELA--><thead><tr><th><xsl:value-of select="rows/content/form/table/destinos/label/nome_dest"/></th><th><xsl:value-of select="rows/content/form/table/destinos/label/tipo_dest"/></th><th><xsl:value-of select="rows/content/form/table/destinos/label/execucao_dest"/></th></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/form/table/destinos/value/row"><xsl:variable name="pos" select="(position()+1) mod 2"/><tr class="IGRP_contextMenu"><td class="table_row{$pos}"><xsl:value-of select="nome_dest" /></td><td class="table_row{$pos}"><xsl:value-of select="tipo_dest" /></td><td class="table_row{$pos}"><xsl:value-of select="execucao_dest" /></td></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--></form></div><!--END FORM-->


	  </div>


		  <!-- END YOUR CODE HERE -->



<xsl:call-template name="home-bottom-inc"/>
</xsl:template>
<!--TEMPLATE FOR HEAD-->
<xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=20111125"/>



</xsl:stylesheet>