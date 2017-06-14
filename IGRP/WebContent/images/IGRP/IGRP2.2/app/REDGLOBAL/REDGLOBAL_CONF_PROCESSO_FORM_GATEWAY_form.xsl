<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="xml/REDGLOBAL_CONF_PROCESSO_FORM_GATEWAY_form.xml" --><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">
<xsl:call-template name="home-top-inc"/>

		  <!-- CONF_PROCESSO CONFIGURACAO PROCESSO FORM_GATEWAY REGISTAR/EDITAR GATEWAY -->

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


		  <!--START FORM--><!--TOOL BAR--><xsl:apply-templates mode="tools-bar" select="rows/content/form/tools-bar" /><div class="box-content"><form action="#" method="post" id="formular_default" name="formular_default" class="default_form" enctype="multipart/form-data"><!--HIDDEN FIELDS--><xsl:apply-templates mode="form-hidden" select="rows/content/form/value" /><label><span><xsl:value-of select="rows/content/form/label/processo"/></span><input type="text" name="{rows/content/form/value/processo/@name}" value="{rows/content/form/value/processo}"  disabled="disabled"  class="" maxlength="150" /></label><label><span>(*) <xsl:value-of select="rows/content/form/label/code"/></span><input type="text" name="{rows/content/form/value/code/@name}" value="{rows/content/form/value/code}"  class="required" maxlength="20" /></label><label><span>(*) <xsl:value-of select="rows/content/form/label/name"/></span><input type="text" name="{rows/content/form/value/name/@name}" value="{rows/content/form/value/name}"  class="required" maxlength="100" /></label><label><span>(*) <xsl:value-of select="rows/content/form/label/class_fk"/></span><select name="{rows/content/form/list/class_fk/@name}" class="required IGRP_change"><xsl:for-each select="rows/content/form/list/class_fk/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span>(*) <xsl:value-of select="rows/content/form/label/with_join"/></span><xsl:for-each select="rows/content/form/list/with_join/option"><input type="radio" name="{../@name}" value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><xsl:value-of select="text"/></xsl:for-each></label><label><span><xsl:value-of select="rows/content/form/label/description"/></span><textarea name="{rows/content/form/value/description/@name}"  class=""><xsl:value-of select="rows/content/form/value/description"/></textarea></label><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/origem" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><!--INICIO DA TABELA--><div class="simple-table"><table rel="T_origem"><!--CABECALHO DA TABELA--><thead><tr><th><xsl:value-of select="rows/content/form/table/origem/label/nome_origem"/></th><th><xsl:value-of select="rows/content/form/table/origem/label/class_origem"/></th><th><xsl:value-of select="rows/content/form/table/origem/label/execucao_origem"/></th></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/form/table/origem/value/row"><xsl:variable name="pos" select="(position()+1) mod 2"/><tr class="IGRP_contextMenu"><td class="table_row{$pos}"><xsl:value-of select="nome_origem" /></td><td class="table_row{$pos}"><xsl:value-of select="class_origem" /></td><td class="table_row{$pos}"><xsl:value-of select="execucao_origem" /></td></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--><xsl:call-template name="page-title"><xsl:with-param name="title" select="rows/content/form/label/destinos" /><xsl:with-param name="class" select="'subtitle'" /></xsl:call-template><xsl:call-template name="tools-bar-form-group"><xsl:with-param name="rel" select="'destinos'" /></xsl:call-template><label><span><xsl:value-of select="rows/content/form/label/aplica_destino"/></span><select name="{rows/content/form/list/aplica_destino/@name}" rel="F_destinos"  class=" IGRP_change"><xsl:for-each select="rows/content/form/list/aplica_destino/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span><xsl:value-of select="rows/content/form/label/proc_destino"/></span><select name="{rows/content/form/list/proc_destino/@name}" rel="F_destinos"  class=" IGRP_change"><xsl:for-each select="rows/content/form/list/proc_destino/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><label><span><xsl:value-of select="rows/content/form/label/etapa_destino"/></span><select name="{rows/content/form/list/etapa_destino/@name}" rel="F_destinos"  class=""><xsl:for-each select="rows/content/form/list/etapa_destino/option"><option value="{value}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><xsl:value-of select="text"/></option></xsl:for-each></select></label><!--INICIO DA TABELA--><div class="simple-table"><table rel="T_destinos"><!--CABECALHO DA TABELA--><thead><tr><th><xsl:value-of select="rows/content/form/table/destinos/label/aplica_destino"/></th><th><xsl:value-of select="rows/content/form/table/destinos/label/proc_destino"/></th><th><xsl:value-of select="rows/content/form/table/destinos/label/etapa_destino"/></th><th align="center" width="10"></th><th align="center" width="10"></th></tr></thead><!--CORPO DA TABELA--><tbody><xsl:for-each select="rows/content/form/table/destinos/value/row"><tr><td><xsl:value-of select="aplica_destino_desc" /><input type="hidden" name="p_destinos_id" value="{destinos_id}" /><input type="hidden" name="p_aplica_destino_fk" value="{aplica_destino}" /><input type="hidden" name="p_aplica_destino_fk_desc" value="{aplica_destino_desc}" /></td><td><xsl:value-of select="proc_destino_desc" /><input type="hidden" name="p_proc_destino_fk" value="{proc_destino}" /><input type="hidden" name="p_proc_destino_fk_desc" value="{proc_destino_desc}" /></td><td><xsl:value-of select="etapa_destino_desc" /><input type="hidden" name="p_etapa_destino_fk" value="{etapa_destino}" /><input type="hidden" name="p_etapa_destino_fk_desc" value="{etapa_destino_desc}" /></td><td align="center" width="10"><img alt="apagar" src="{$path}/img/icon/ctx-delete.png" class="IGRP_delRow" rel="destinos"/></td><td align="center" width="10"><img alt="editar" src="{$path}/img/icon/edit.png" class="IGRP_editRow" rel="destinos"/></td></tr></xsl:for-each></tbody></table></div><!--FIM DA TABELA--></form></div><!--END FORM-->


	  </div>


		  <!-- END YOUR CODE HERE -->



<xsl:call-template name="home-bottom-inc"/>
</xsl:template>
<!--TEMPLATE FOR HEAD-->
<xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=20111128"/>



</xsl:stylesheet>