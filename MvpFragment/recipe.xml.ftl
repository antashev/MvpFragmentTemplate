<?xml version="1.0"?>
<recipe>

 <instantiate from="src/app_package/Contract.kt.ftl"
  to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />
 <instantiate from="src/app_package/MvpFragment.kt.ftl"
  to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
 <instantiate from="src/app_package/Presenter.kt.ftl"
  to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
 <instantiate from="res/layout/fragment.xml.ftl"
  to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" /> 
 <open file="${srcOut}/${className}Presenter.kt" />
</recipe>
