<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="xml/REDGLOBAL_PROC_CONFIG_23_form.xml" --><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">
<xsl:call-template name="home-top-inc"/>

		  <!-- PROC_CONFIG CONFIGURACAO PROCESSOS 23 ASSOCIAR OUTPUT ETAPA -->

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


		  <!--START FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/form/tools-bar" /><div class="box-content"><form action="#" method="post" id="formular_default" name="formular_default" class="default_form" enctype="multipart/form-data"><!--HIDDEN FIELDS--><xsl:apply-templates mode="form-hidden" select="rows/content/form/value" /><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/configuracao_output" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><label><span><xsl:value-of select="rows/content/form/label/etapa"/></span><input type="text" name="{rows/content/form/value/etapa/@name}" value="{rows/content/form/value/etapa}"  disabled="disabled"  class="" maxlength="30" /></label><label><span><xsl:value-of select="rows/content/form/label/processo"/></span><input type="text" name="{rows/content/form/value/processo/@name}" value="{rows/content/form/value/processo}"  disabled="disabled"  class="" maxlength="30" /></label><label><span><xsl:value-of select="rows/content/form/label/tipo"/></span><select name="{rows/content/form/list/tipo/@name}" class=""><xsl:for-each select="rows/content/form/list/tipo/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span><xsl:value-of select="rows/content/form/label/enviar"/></span><xsl:for-each select="rows/content/form/list/enviar/option"><input type="radio" name="{../@name}" value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><xsl:value-of select="text"/></xsl:for-each></label><label><span><xsl:value-of select="rows/content/form/label/meio_envio"/></span><select name="{rows/content/form/list/meio_envio/@name}" class=""><xsl:for-each select="rows/content/form/list/meio_envio/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span><xsl:value-of select="rows/content/form/label/corpo"/></span><textarea name="{rows/content/form/value/corpo/@name}"  class=""><xsl:value-of select="rows/content/form/value/corpo"/></textarea></label></form></div><!--END FORM-->


	  </div>


		  <!-- END YOUR CODE HERE -->



<xsl:call-template name="home-bottom-inc"/>
</xsl:template>
<!--TEMPLATE FOR HEAD-->
<xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl"/>

</xsl:stylesheet>