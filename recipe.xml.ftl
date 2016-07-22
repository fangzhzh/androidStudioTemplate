<?xml version="1.0"?>
<recipe>
 
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <instantiate from="src/app_package/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}View.java" />
    <instantiate from="src/app_package/MvpViewActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" />
    <instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />
    <instantiate from="res/layout/activity.xml.ftl" 
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
 
    <open file="${srcOut}/${className}Presenter.java"/>
    <open file="${srcOut}/${className}View.java"/>
    <open file="${srcOut}/${className}Activity.java"/>
</recipe>
