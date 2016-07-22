<?xml version="1.0"?>
<globals>
 <global id="resOut" value="${resDir}" />
 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
 <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>"/>
 <global id="activityClass" value="${className}Activity_"/>
 <global id="componentClass" value="${component}.java"/>
</globals>
