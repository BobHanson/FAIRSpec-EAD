<?xml version="1.0" encoding="ISO-8859-1" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:element name="html">
            <xsl:element name="head">
                <xsl:element name="title">
                    <xsl:value-of select="//eadheader/filedesc/titlestmt/titleproper"/> Finding Aids : MNHS.ORG </xsl:element>


                <xsl:element name="meta">
                    <xsl:attribute name="name">dc.title</xsl:attribute>
                    <xsl:attribute name="content">
                        <xsl:value-of select="ead/eadheader/filedesc/titlestmt/titleproper"/>
                        <xsl:text>  </xsl:text>
                        <xsl:value-of select="ead/eadheader/filedesc/titlestmt/subtitle"/>
                    </xsl:attribute>
                </xsl:element>

                <xsl:element name="meta">
                    <xsl:attribute name="name">dc.author</xsl:attribute>
                    <xsl:attribute name="content">
                        <xsl:value-of select="ead/archdesc/did/origination"/>
                    </xsl:attribute>
                </xsl:element>

                <xsl:for-each
                    select="ead//controlaccess/persname | ead//controlaccess/famname  | ead//controlaccess/corpname | ead//controlaccess/title">
                    <xsl:choose>
                       <xsl:when test="@encodinganalog='600'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.subject</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="@encodinganalog='610'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.subject</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="@encodinganalog='611'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.subject</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>

                        <xsl:when test="@encodinganalog='630'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.subject</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>

                        <xsl:when test="@encodinganalog='700'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.contributor</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>

                        <xsl:when test="@encodinganalog='710'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.contributor</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>

                        <xsl:when test="@encodinganalog='711'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.contributor</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>

                        <xsl:when test="@encodinganalog='730'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.title</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>

                        <xsl:when test="@encodinganalog='740'">
                            <xsl:element name="meta">
                                <xsl:attribute name="name">dc.title</xsl:attribute>
                                <xsl:attribute name="content">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                            </xsl:element>
                        </xsl:when>
                    </xsl:choose>
                </xsl:for-each>

                <xsl:for-each select="ead//controlaccess/subject">
                    <xsl:element name="meta">
                        <xsl:attribute name="name">dc.subject</xsl:attribute>
                        <xsl:attribute name="content">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:element>
                </xsl:for-each>

                <xsl:element name="meta">
                    <xsl:attribute name="name">dc.title</xsl:attribute>
                    <xsl:attribute name="content">
                        <xsl:value-of select="ead/archdesc/did/unittitle"/>
                    </xsl:attribute>
                </xsl:element>

                <xsl:element name="meta">
                    <xsl:attribute name="name">dc.type</xsl:attribute>
                    <xsl:attribute name="content">text</xsl:attribute>
                </xsl:element>

                <xsl:element name="meta">
                    <xsl:attribute name="name">dc.format</xsl:attribute>
                    <xsl:attribute name="content">manuscripts</xsl:attribute>
                </xsl:element>

                <xsl:element name="meta">
                    <xsl:attribute name="name">dc.format</xsl:attribute>
                    <xsl:attribute name="content">finding aids</xsl:attribute>
                </xsl:element>

                <xsl:for-each select="ead//controlaccess/geogname">
                    <xsl:element name="meta">
                        <xsl:attribute name="name">dc.coverage</xsl:attribute>
                        <xsl:attribute name="content">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
                <style type="text/css" media="screen" title="Default">
                    @import url("http://www.mnhs.org/web_assets/stylesheets/mnhs_global_text.css");
                    @import url("http://www.mnhs.org/web_assets/stylesheets/mnhs_globalSub_layout.css");
                    @import url("http://www.mnhs.org/web_assets/stylesheets/mnhs_library.css");
                    @import url("mnhs_findingaids.css");
                </style>

                <!--SOLR Search Stylesheet -->
                <link href="http://www.mnhs.org/web_assets/stylesheets/dropnav/solr-search-standard.css" type="text/css" media="screen" />
                
                <!-- EAD Print Stylesheet -->
                <link href="eadprint.css" rel="stylesheet" media="print" type="text/css"/>

                <!-- ========== MHS JAVASCRIPT ========== -->
                
                <script type="text/javascript" src="http://www.mnhs.org/web_assets/js/jquery-1.5.min.js"></script>
                <script type="text/javascript" src="http://www.mnhs.org/web_assets/js/jquery.hoverIntent.min.js"></script>
                <script type="text/javascript" src="http://www.mnhs.org/web_assets/js/jquery.client.min.js"></script>
                <script type="text/javascript" src="http://www.mnhs.org/web_assets/js/jquery.topzindex.min.js"></script>
                <!--<script type="text/javascript" src="http://www.mnhs.org/web_assets/js/jquery.mhs_dropnav.js"></script>-->
                <script src="http://legacy.mnhs.org/sites/all/includes/ismobile.php" type="text/javascript"></script>
                <!-- ========== END MHS JAVASCRIPT ========== -->
                

                <!--#include virtual="/include/mhs-header-scripts.inc" -->

                
                <!--<link rel="stylesheet" href="http://www.mnhs.org/web_assets/stylesheets/dropnav/drop-navigation.css" type="text/css" media="screen" />-->
                <link rel="stylesheet" href="http://www.mnhs.org/web_assets/stylesheets/mega/css/reset.css" type="text/css" media="screen" />
                <!-- Reset -->
                <link rel="stylesheet" href="http://www.mnhs.org/web_assets/stylesheets/mega/menu.css" type="text/css" media="screen" />
                <!-- Menu -->
                <!--[if IE 6]>
                    <link rel="stylesheet" href="http://www.mnhs.org/web_assets/stylesheets/mega/ie/ie6.css" type="text/css" media="screen" />
                    <![endif]-->
                <!--[if IE]>
                    <![endif]-->
                
                <style>
                    #nav {
                    width:100%!important;}
                    #nav ol li {font-size:10px;}
                    #nav ol li a {
                    padding:6px 4px 8px 5px;}
                </style>
                
                
                <!-- Template Header (Masthead) -->
                <style>
                    .findaids-brand_top{
                    display:block;
                    width:100%;
                    background:url(http://www.mnhs.org/library/findaids/images/findingaids-masthead.jpg) top left no-repeat;
                    height:105px;
                    border-top:10px #fff solid;}
                </style>
                <!--End Template Header -->

                
            </xsl:element> 

            <!-- Inserts logo and title at the top of the display. -->

            <body id="findingaids">
                <a name="top"/>
                <a name="a0"/>
                <div id="skiplinks" class="hidden">
                    <ul>
                        <li>
                            <a href="#content" accesskey="2" title="[accesskey = 2]">Jump to Main
                                Content.</a>
                        </li>
                        <li>
                            <a href="#global" accesskey="3" title="[accesskey  = 3]">Jump to Global
                                Navigation.</a>
                        </li>
                        <li>
                            <a href="#primary" accesskey="4" title="[accesskey = 4]">Jump to Table
                                of Contents and Section Navigation. </a>
                        </li>
                        <li>
                            <a href="#sub" accesskey="5" title="[accesskey = 5]">Jump to Resource
                                Links.</a>
                        </li>
                        <li>
                            <a href="http://www.mnhs.org/search/" accesskey="6"
                                title="[accesskey = 6]">Go to Search Page.</a>
                        </li>
                        <li>
                            <a href="/index.htm" accesskey="1" title="[accesskey = 1]">Go to Home
                                Page.</a>
                        </li>
                    </ul>
                </div> <!-- end skiplinks -->
                <div id="logo">
                    <img src="http://www.mnhs.org/web_assets/logos/MHS_Signature.gif" class="hiddenprint"/>
                </div>

                 <div align="center">
                    <div id="border">
                        <!-- FLASH HEADER & NAVIGATION -->
                        <div id="globalheader" class="hiddenprint" align="left">
                            
                            <!--start globalheader.inc-->
                            <!--[if lt IE 7]>
                                <script defer type="text/javascript" src="http://www.mnhs.org/web_assets/js/pngfix_map.js"></script>
                            <![endif]-->
                            <div id="global_header" class="hd_white">
                                <div class="left"><a href="http://www.mnhs.org"><img border="0" src="http://www.mnhs.org/web_assets/empty.gif" alt="Minnesota Historical Society Logo" width="200" height="50" /></a></div>
                                <!--end "left-->
                                <div id="search">
                                    <!--start grn_header_search.inc-->
                                    <div class="right">
                                        <span class="quicklinks"><a href="http://www.mnhs.org/siteindex.htm">Sitemap</a></span> |
                                        <span class="quicklinks"><a href="http://www.mnhs.org/about/members/donate.htm">Donate</a></span> |
                                        <span class="quicklinks"><a href="http://www.mnhs.org/about/members/index.html">Membership</a></span> |
                                        <span class="quicklinks"><a href="http://www.mnhs.org/enews/">eNews</a></span> |
                                        <span class="quicklinks"><a href="http://shop.mnhs.org/">Shop</a></span>
                                    </div>
                                    
                                    <div class="clearing"></div>
                                    <div align="right" class="searchbox right">
                                        <div class="searchbox_rt right"> <!--keep empty--> </div>
                                        <!-- <form method="get" id="global-search-form" action="http://greatriversnetwork.org/index.php">
                                            <input class="input-box" type="text" name="q" maxlength="75" accesskey="q" size="75" value="" />
                                            <input class="searchKeyword" onclick="submit(); return true" value="Search" alt="Search" name="button" type="button" />
                                        </form> -->
                                        
                                        <form method="get" class="global-search-form" title="Search the MNHS website and research materials" action="http://search.mnhs.org/">
                                            <input onkeypress="return checkSubmit(event);" class="input-box" title="Enter search query" type="text" name="q" maxlength="75" size="75"/>
                                            <input type="hidden" value="websites" name="tab"/>
                                            <input type="image" src="http://www.mnhs.org/sites/all/themes/mnhs_org/img/search.png" name="Search" title="Search query submit" alt="Search query submit" class="searchKeyword"/>
                                        </form>
                                        
                                    </div> <!-- end searchbox -->
                                    <!--start grn_header_search.inc-->
                                </div><!--end "search" -->
                            </div><!--end "global_header" -->

                            <!--Navigation Here -->
                            <div class="clearing"></div>
                            <div id="navWrapper">
                                <div id="nav">
                                    <ol>
                                        <li>
                                            <a href="http://www.mnhs.org/visit/" class="access"
                                                accesskey="v" title="Visitor Guide [access key = v]"
                                                  ><em>V</em>isit</a>
                                        </li>
                                        <li>
                                            <a href="http://events.mnhs.org/calendar/"
                                                class="access" accesskey="c"
                                                title="Dates, times and locations of Events [access key = c]"
                                                  ><em>C</em>alendar</a>
                                        </li>
                                        <li>
                                            <a href="http://sites.mnhs.org/library/" class="access"
                                                accesskey="l"
                                                title="Library Hours, Services and Information [access key = l]"
                                                  ><em>L</em>ibrary</a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/exhibits/" class="access"
                                                accesskey="x"
                                                title="Currently Featured and Past Exhibitions [access key = x]"
                                                  >E<em>x</em>hibits</a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/genealogy/" class="access"
                                                accesskey="y"
                                                title="Genealogical Resources [access key = y]"
                                                  >Famil<em>y</em> History</a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/people/" class="access"
                                                accesskey="p"
                                                title="The People of Minnesota [access key = p]"
                                                  ><em>P</em>eople</a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/places/" class="access"
                                                accesskey="s"
                                                title="State Historic Sites and Resources [access key = s]"
                                                  >Place<em>s</em></a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/events/" class="access"
                                                accesskey="n"
                                                title=" Historic Events in Minnesota History [access key = n]"
                                                  >Eve<em>n</em>ts</a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/collections/"
                                                class="access" accesskey="o"
                                                title="Collections at MHS [access key = o]"
                                                  >C<em>o</em>llections</a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/school/" class="access"
                                                accesskey="e"
                                                title="Educational Resources for Teachers and Students [access key = e]"
                                                  ><em>E</em>ducation</a>
                                        </li>
                                        <li>
                                            <a href="http://www.mnhs.org/about/" class="access"
                                                accesskey="a"
                                                title="Learn more about MHS, as well as Grant and Job Opportunities [access key = a]"
                                                  ><em>A</em>bout MHS</a>
                                        </li>

                                    </ol>
                                </div><!-- end nav -->
                            </div><!--end NavWrapper -->
                        </div><!-- end globalheader -->
                        <!-- End FLASH HEADER & NAVIGATION -->
                        
                        <!-- CRUMBS -->
                        <div class="hidden">Begin Bread Crumb Trail.</div>
                        <div id="crumbs" align="left">
                            <p>
                                <a href="http://www.mnhs.org">Home</a>
                                / <a href="http://sites.mnhs.org/library/">Library</a>
                                <!-- InstanceBeginEditable name="crumbs" -->
                                / <a href="http://search.mnhs.org?brand=findaids">Finding Aids</a>
                                <!-- InstanceEndEditable -->
                            </p>
                        </div>
                        <!-- endcrumbs -->
                        <div class="hidden">End Bread Crumb Trail.</div>
                        <!-- End CRUMBS -->
                        
                        
                        <!-- TEMPLATE HEADER -->
                        <a href="http://search.mnhs.org?brand=findaids"><div class="findaids-brand_top hiddenprint"></div></a>
                        <!-- endtemplateHeader -->
                        <!-- END TEMPLATE HEADER -->

                        <!-- PAGE CONTENT -->
                        <a name="content"/>

                        <div id="contentWrapper">
                            <div id="content" align="left">
                                
                                <xsl:apply-templates/>

                            </div>
                            <!-- endcontent -->
                            <div class="hidden">
                                <strong>Begin Page Contents and Section Navigation.</strong>
                            </div>
                            <a name="primary"/>
                            <div class="primaryNav" align="left">
                                
                                <!-- BEGIN Great Rivers search -->
                                <div style="padding:6px 0px 6px 12px; border-bottom:1px solid #FFFFFF">
                                    <form action="http://search.mnhs.org">
                                        <input type="text" name="q" value="" maxlength="50" id="keyword" /><br /><br />
                                        <input type="hidden" name="brand" value="findaids" />
                                        <input value="Search all Finding Aids" type="submit" style="width:135px;font-size:11px" />
                                    </form>
                                    <p align="center">To search this finding aid,<br></br>expand all and use 'ctrl+f' <i>(PC)</i><br></br>or 'cmd+f' <i>(Mac)</i></p>
                                </div>
                                <!-- END Great Rivers search -->
                                
                                <!-- BEGIN Finding Aid Sections -->
                                
                                <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                    <a class="heading" href="#a0"> Overview</a>
                                </div>
                                <xsl:if test="ead/archdesc/bioghist/head[@altrender='biography']">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a2"> Biographical Note</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/bioghist/head[@altrender='history']">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a2">Historical Note</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/scopecontent">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a3">Scope and Contents</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/arrangement">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a4">Arrangement</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/otherfindaid">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a6">Other Finding Aids</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/descgrp">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a8">Administrative Info</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/dsc">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a9">Detailed Description</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/relatedmaterial">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a5">Related Material</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/separatedmaterial">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a5a">Separated Material</a>
                                    </div>
                                </xsl:if>
                                <xsl:if test="ead/archdesc/controlaccess">
                                    <div style="display: block; border-bottom: 1px dotted #FFFFFF">
                                        <a class="heading" href="#a7">Catalog Headings</a>
                                    </div>
                                </xsl:if>
                                <!-- END Finding Aid Sections -->
                                
                                <!-- BEGIN Expand All/Collapse All Buttons -->
                                <div id="collapsiblebuttons" style="display: block; border-top: 1px solid #FFFFFF; border-bottom: 1px dotted #FFFFFF">
                                    <a href="#" onclick="collapseAll();">
                                        <img src="images/RightArrowBlue.png" border="0" height="9px" alt="Collapse" hspace="0" vspace="0"/>&#x20; Collapse All</a>
                                </div>
                                <div id="collapsiblebuttons" style="display: block; border-bottom: 2px solid #FFFFFF">
                                    <a href="#" onclick="expandAll();">
                                        <img src="images/DownArrowBlue.png" border="0" height="9px" alt="Expand" hspace="0" vspace="0"/>&#x20; Expand All</a>
                                </div>
                                <!-- END Expand All/Collapse All Buttons -->
                                
                                <!-- BEGIN External Links -->
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://search.mnhs.org?brand=findaids">Finding Aids, A-Z</a>
                                </div>
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://www.mnhs.org/library/findaids/index-WhatsNew.htm">New Finding Aids</a>
                                </div>
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="https://mnpals-mhs.primo.exlibrisgroup.com/discovery/search?vid=01MNPALS_MHS:MHS&amp;sortby=rank">Search Library &amp; Archives Catalog</a>
                                </div>
                                
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://search.mnhs.org">Search Collections</a>
                                </div>
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://sites.mnhs.org/library/content/faq">Library FAQ</a>
                                </div>
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://sites.mnhs.org/library/content/copy-services">Copy Services</a>
                                </div>
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://sites.mnhs.org/library/researchservices">Research Services</a>
                                </div>                                
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://sites.mnhs.org/library/node/257">Take-Down Procedure</a>
                                </div>                                
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="https://www.facebook.com/galefamilylibrary">Library Facebook</a>
                                </div>
                                <div style="display:block; border-bottom:1px dotted #FFFFFF">
                                    <a href="http://www.mnhs.org/library/findaids/CMToolkit/CMToolkit.htm">Collections Management Toolkit</a>
                                </div>
                                <!-- END External Links -->

                                <!-- ========== END RIGHT COLUMN SECTION NAVIGATION ========== -->
                                <div class="hidden">End Page Contents and Section Navigation.</div>
                                <div id="promo" align="center">
                                    <!-- AddThis Button BEGIN -->
                                    <!-- AddThis Button END -->
								</div> <!-- end promo -->
                            </div> <!-- end primaryNav -->

                            <br clear="all"/>

                        </div> <!-- endcontentWrapper -->
                        <!-- SUB MENU -->
                        <div class="hidden">
                            <strong>Begin Resource Links.</strong>
                        </div>
                        <a name="sub"/>

                        <div id="submenu" align="left">
                            <img src="http://www.mnhs.org/web_assets/submenu_divider.gif" alt=""/>
                            <br />
                            <table border="0" width="756" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th colspan="4" align="left">Additional Information</th>
                                </tr>
                                <tr>
                                    <!-- ========== SUBMENU 1 ========== -->
                                    <td align="left" valign="top" width="189">
                                        <ul class="UL">

                                            <li>
                                                <a href="http://people.mnhs.org/authors/index.cfm"
                                                  >Author Biographies</a>
                                            </li>
                                            <li>
                                                <a href="http://people.mnhs.org/bci">Birth
                                                  Certificates Index</a>
                                            </li>
                                            <li>
                                                <a
                                                  href="http://www.mnhs.org/library/Christie/intropage.html"
                                                  >Christie Civil War Letters</a>
                                            </li>
                                            <li>
                                                <a
                                                    href="http://sites.mnhs.org/library/content/civil-war-research"
                                                  >Civil War Research</a>
                                            </li>
                                            <li>
                                                <a href="http://discussions.mnhs.org/collections/"
                                                  >Collections Up Close</a>
                                            </li>
                                            
                                            <li>
                                                <a
                                                    href="http://www.mnhs.org/library/constitution/index.html"
                                                    >Constitution</a>
                                            </li>
                                            
                                        </ul>
                                    </td>
                                    <!-- ========== SUBMENU 2 ========== -->
                                    <td align="left" valign="top" width="189">
                                        <ul class="UL">
                                            <li>
                                                <a href="http://people.mnhs.org/dci">Death
                                                    Certificate Index</a>
                                            </li>
                                            <li>
                                                <a
                                                  href="http://collections.mnhs.org/duluthlynchings/"
                                                  >Duluth Lynchings Resource</a>
                                            </li>
                                            <li>
                                                <a
                                                  href="http://www.mnhs.org/genealogy/family/family.htm"
                                                  >Family History Research</a>
                                            </li>
                                          
                                            <li>
                                                <a
                                                  href="http://www.mnhs.org/places/nationalregister/bridges/bridges.html"
                                                  >Historic Bridges</a>
                                            </li>
                                            <li>
                                                <a
                                                    href="http://www.mnhs.org/places/nationalregister/shipwrecks/index.html"
                                                    >Historic Shipwrecks</a>
                                            </li>
                                            <li>
                                                <a href="http://education.mnhs.org/historyday/">History Day</a>
                                            </li>
                                        </ul>

                                    </td>
                                    <!-- ========== SUBMENU 3 ========== -->
                                    <td align="left" valign="top" width="189">
                                        <ul class="UL">
                                            <li>
                                                <a
                                                    href="http://sites.mnhs.org/library/node/92"
                                                    >History Topics</a>
                                            </li>
                                            <li>
                                                <a
                                                    href="http://sites.mnhs.org/library/content/legislative-history"
                                                  >Legislative History</a>
                                            </li>
                                            <li>
                                                <a href="http://www.mnhs.org/MedDevice">Medical
                                                  Device Industry</a>
                                            </li>
                                            <li>
                                                <a
                                                    href="http://www.mnhs.org/market/mhspress/minnesotahistory/index.html"
                                                  ><em>Minnesota History</em> Index</a>
                                            </li>
                                            <li>
                                                <a href="http://content.mnhs.org/maps/">Map Collection</a>
                                            </li>
                                            <li>
                                                <a href="http://www.mnhs.org/mnmaps">Minnesota Maps
                                                  Online</a>
                                            </li>
                                        </ul>
                                    </td>

                                    <td width="189" align="left" valign="top">
                                        <ul class="UL">
                                            <li>
                                                <a href="http://people.mnhs.org/census/search.cfm?bhcp=1">Minnesota Census Index</a>
                                            </li>
                                            <li>
                                                <a href="http://nrhp.mnhs.org/">National
                                                    Register</a>
                                            </li>
                                            <li>
                                                <a
                                                    href="http://sites.mnhs.org/library/content/newspaper-collection"
                                                    >Newspaper Collection</a>
                                            </li>
                                            <li>
                                                <a href="http://mnplaces.mnhs.org/upham">Place
                                                  Names</a>
                                            </li>
                                            <li>
                                                <a
                                                    href="http://sites.mnhs.org/library/researchservices"
                                                  >Research Services</a>
                                            </li>
                                            <li>
                                                <a href="http://sites.mnhs.org/library/node/31">Video Tutorials</a>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </div> <!-- endsubmenu -->
                        <div class="hidden">End Resource Links.</div>
                        <!--END SUB MENU -->
                        
                        <!-- FOOTER CONTENT -->
                        <div id="footer">
                            <div class="hidden"><strong>Begin Global Navigation.</strong></div>
                            <!-- FOOTER NAVIGATION LINKS --><a name="global"></a>
                            <div id="footerlinks" style="float:left">
                                <div style="float:left">
                                    <a href="http://www.mnhs.org/about/faq.htm" class="access" accesskey="f" title="[access key = f]"><em>f</em>aq</a>
                                    <a href="http://www.mnhs.org/about/contact/" class="access" accesskey="u" title="[access key = u]">contact <em>u</em>s</a>
                                    <a href="#top" class="access endlink" accesskey="r" title="[access key = r]"><em>r</em>eturn to top</a>
                                </div>
                                <div style="font-size:10px;float:right;">Follow us on:
                                    <a href="http://www.facebook.com/minnesotahistoricalsociety" target="_blank" style="border:none;padding:0px 0px 0px 0px"><img src="http://www.mnhs.org/web_assets/icons/facebook_16.png" width="16" border="0" alt="Facebook" /></a>
                                    <a href="http://twitter.com/mnhs" target="_blank" style="border:none;padding:0px 0px 0px 0px"><img src="http://www.mnhs.org/web_assets/icons/twitter_16.png" width="16" border="0" alt="Twitter" /></a>
                                    <a href="http://www.youtube.com/minnesotahistory" target="_blank" style="border:none;padding:0px 0px 0px 0px"><img src="http://www.mnhs.org/web_assets/icons/youtube_16.png" width="16" border="0" alt="YouTube" /></a>
                                    <a href="http://www.flickr.com/photos/minnesotahistoricalsociety/" target="_blank" style="border:none;padding:0px 10px 0px 0px"><img src="http://www.mnhs.org/web_assets/icons/flickr_16.png" width="16" border="0" alt="Flickr" /></a>
                                </div>
                            </div> <!-- end footerlinks -->
                            <div class="hidden">End Global Navigation.</div> 
                            <!-- FOOTER BOTTOM LINKS -->
                            
                            <div class="hidden">Begin company and site menu.</div>
                            <div class="footcontainer">
                                <div style="float:right;width:185px;padding-right:10px;padding-top:10px;">
                                    <span style="float:right;">
                                        <div id="google_translate_element"></div><script>
                                            function googleTranslateElementInit() {
                                            new google.translate.TranslateElement({
                                            pageLanguage: 'en'
                                            }, 'google_translate_element');
                                            }
                                        </script>
                                        <script src="http://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script></span>
                                </div>
                                <div id="address" >
                                    <address style="width:550px; float:left;padding-top:10px;">
                                        <p>Minnesota Historical Society  | 345 W. Kellogg Blvd., St. Paul, MN 55102-1906  |  651-259-3000 <br />
                                            <a href="http://www.mnhs.org/copyright">(C) 2015 MHS</a>. 
                                            Send questions or comments to <a href="mailto:webmaster@mnhs.org">webmaster@mnhs.org</a>. 
                                            View our <a href="http://www.mnhs.org/copyright">Copyright</a> and <a href="http://www.mnhs.org/privacy.html">Privacy</a> policies.</p>
                                    </address>
                                    <div style="clear:both"></div>
                                    <!-- end minimalfooter.inc-->
                                </div> <!-- end address -->
                            </div> <!-- end footcontainer -->
                        </div> <!-- end footer -->

                        <!-- END PAGE CONTENT -->

                    </div> <!-- end border -->
                </div> <!-- end center -->

                <!-- BEGIN COLLAPSIBLE FUNCTION -->
                <script language="JavaScript" type="text/javascript">
                    //by Adrienne MacKay and Stephanie Adamson
                    //Carolina Digital Libary and Archives (CDLA)
                    //define an array identifying all expandible/collapsible div elements by ID
                    var divs = document.getElementsByTagName('div');
                    var ids = new Array();
                    var n = 0;
                    for (var i = 0; i &lt; divs.length; i++) {
                        //conditional statement limits divs in array to those with class 'showhide'
                        //change 'showhide' to whatever class identifies expandable/collapsible divs.
                        if (divs[i].className == 'showhide') {
                            ids[n] = divs[i].id;
                            n++;
                        }
                    }
                    
                    function expandAll() {
                        //loop through the array and expand each element by ID
                        for (var i = 0; i &lt; ids.length; i++) {
                            var ex_obj = document.getElementById(ids[i]).style;
                            ex_obj.display = ex_obj.display == "none"? "block": "block";
                            //swap corresponding arrow image to reflect change
                            var arrow = document.getElementById("x" +(ids[i]));
                            arrow.src = "images/DownArrowBlue.png";
                        }
                    }
                    
                    function collapseAll() {
                        //loop through the array and collapse each element by ID
                        for (var i = 0; i &lt; ids.length; i++) {
                            var col_obj = document.getElementById(ids[i]).style;
                            col_obj.display = col_obj.display == "block"? "none": "none";
                            //swap corresponding arrow image to reflect change
                            var arrow = document.getElementById("x" +(ids[i]));
                            arrow.src = "images/RightArrowBlue.png";
                        }
                    }
                    
                    //Adrienne's original show/hide script for individual div toggling
                    //by Adrienne MacKay, adapted 10/2008 by Stephanie Adamson to include arrow image swapping
                    function changeDisplay(obj_name) {
                        var my_obj = document.getElementById(obj_name);
                        var arrow = document.getElementById("x" + obj_name);
                        if (my_obj.style.display == "none") {
                            my_obj.style.display = "block";
                            arrow.src = "images/DownArrowBlue.png";
                        } else {
                            my_obj.style.display = "none";
                            arrow.src = "images/RightArrowBlue.png";
                        }
                    };</script>
                <!-- END COLLAPSIBLE FUNCTION -->
                <xsl:call-template name="gAnalytics" />     
            </body>
        </xsl:element>
    </xsl:template>


    <!-- =============== BEGIN EAD TRANSFORMATION =============== -->
    <!-- Revised:  January 24, 2019 - Changed link to Search Library & Archives catalog. Added switch test in <descgrp> to add Availability note when no access restrictions are present. -->
    <!-- Revised: Monica Manny Ralston, December 26, 2018 - Added boilerplate language to <controlaccess><p> Section 7 with link to library catalog and commented out the transformation of other paragraphs in that same section -->
    <!-- Revised: Monica Manny Ralston, June 15, 2015 - Revised search urls to new MNHS search urls -->
    <!-- Revised: Monica Manny Ralston, June 17, 2013 - Revised GRN seach box form -->
    <!-- Revised: Monica Manny Ralston, March 8, 2013 - Added physdesc output to c02@level=subseries -->
    <!-- Revised: Monica Manny Ralston, March 7, 2012 - Changed valign="top" to "bottom" for all component unittitles so that 
                  long physlocs would not add white space between the unititle and following elements -->  
    <!-- Revised: Monica Manny Ralston, October 28, 2011: Added class="eadsubheading" to <seriesstmt><p> for holding type print purposes -->
    <!-- Revised: Monica Manny Ralston, September 13, 2011: Added class="hiddenprint" to mhs_signature.gif due unresolved printing problem in Win7 
                   where Logo prints out on a separate paage -->
    <!-- Revised: Monica Manny Ralston, April 14-22, 2011: Added chronologies to scope note, added link to New Finding Aids page, 
                  and corrected rendering of superscripts -->
    <!-- Revised: Monica Manny Ralston, February 18, 2011: Changed color in container template from #3a6894 to #666666 -->
    <!-- Revised: Monica Manny Ralston, February 8, 2011:  Added <phystech> to <descgrp> -->
    <!-- Revised: Monica Manny Ralston, June 14, 2010:  Moved sections 5 (Related Material), 5a (Separated Material), 
                  and 7 (Catalog Headings) to follow section 9 (Detailed Description); 
                  Added call to chronlist template for c01-complex bioghist;
                  Added call to EADtable template for c01-complex scopecontent;
                  Added <accruals> <appraisal> and <phystech> to components;
                  Moved <materialsspec> into component-did template.   -->
    <!-- Revised: Monica Manny Ralston, April 9, 2010: Added <seriesstmt> -->
    <!-- Revised: Monica Manny Ralston, August 18, 2009:  Added <otherfindaid> to components -->
    <!-- Revised: Monica Manny Ralston, July 28, 2009:  Added <originalsloc> to components; revised <daoloc> for links without thumbnails  -->
    <!-- Revised: Monica Manny Ralston, June 24, 2009:  head for notes in c01 and c02 -->
    <!-- Revised: Monica Manny Ralston, March 1, 2009:  Styles for class="eadtable" and class-"dsctable"; <dao> -->
    <!-- Revised: Monica Manny Ralston, February 24, 2009: <extptr>, collapsible divisions, and style (colors, font-sizes) -->
    <!-- Revised: January 12, 2009 -->
    <!-- Revised: Monica Manny Ralston, Minnesota Historical Society, St. Paul, October 2008:  Flat, complex and simple table styles -->
    <!-- Drafted: Joyce Chapman, University of North Carolina, Chapel Hill, July-August 15, 2008 -->
    <!-- Version 1:  Michael Fox, Minnesota Historical Society, 2000 -->
   

    <xsl:template match="ead">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- ========== EAD header ========== -->

    <xsl:template match="eadheader">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="eadid"/>
    <xsl:template match="filedesc">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="notestmt"/>
    <xsl:template match="publicationstmt"/>
    <xsl:template match="sponsor"/>
    <xsl:template match="notestmt"/>
    <xsl:template match="profiledesc"/>
    <xsl:template match="revisiondesc"/>
    

    <xsl:template match="titlestmt">     

        <h1>
            <center>
                <xsl:value-of
                    select="translate(titleproper,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                <xsl:text>&#x20;</xsl:text>
            </center>
        </h1>
        <p class="eadsubheading">
            <xsl:value-of select="subtitle"/></p>
       
    </xsl:template>
    
    <xsl:template match="seriesstmt">
        <p class="eadsubheading" style="color:#404040;">
            <xsl:value-of select="p"/></p>
    </xsl:template>    
  

    <!-- ========== TEST for RESTRICTION STATEMENT ========== -->
    <xsl:template match="archdesc">
        <xsl:if test="descgrp/accessrestrict | descgrp/userestrict">
            <center>
                <p class="restriction">Part or all of this collection is restricted. <br />
                    For details, please see the <a href="#a8">restrictions</a>.</p>
            </center>
            <br />
        </xsl:if>
        <p/>


        <!-- ========== ORDER OF SECTIONS ========== -->

        <!-- Used to order display of inventory sections 
 and their anchored sidebar navigation buttons.
 Changed 2008:  <relatedmaterial> and <controlaccess>
 were moved to display below the <descgrp> -->
        <!-- anchor 1 <did> -->
        <!-- anchor 2 <bioghist> -->
        <!-- anchor 3 <scopecontent> -->
        <!-- anchor 4 <arrangement> -->
        <!-- anchor 6 <otherfindaids> -->
        <!-- anchor 8 <descgrp> -->
        <!-- anchor 9 <dsc> -->
        <!-- anchor 5 <relatedmaterial> -->
        <!-- anchor 5a <separatedmaterial> -->
        <!-- anchor 7 <controlaccess> -->
        
        
        <xsl:apply-templates select="did"/>
        <xsl:apply-templates select="bioghist"/>
        <xsl:apply-templates select="scopecontent"/>
        <xsl:apply-templates select="arrangement"/>
        <xsl:apply-templates select="otherfindaid"/>
        <xsl:apply-templates select="descgrp"/>
        <xsl:apply-templates select="dsc"/>
        <xsl:apply-templates select="relatedmaterial"/>
        <xsl:apply-templates select="separatedmaterial"/>
        <xsl:apply-templates select="controlaccess"/>
    </xsl:template>

    <!-- ========== RENDER FONT ========== -->

    <xsl:template match="*[@altrender='subhead']">
        <strong style="color:#3a6894">
            <xsl:value-of
                select="translate(.,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
        </strong>
    </xsl:template>

    <xsl:template match="*[@render='bold']">
        <strong style="color:#404040;">
            <xsl:value-of select="."/>
        </strong>
    </xsl:template>

    <xsl:template match="*[@render='italic']">
        <em>
            <xsl:value-of select="."/>
        </em>
    </xsl:template>

    <xsl:template match="*[@render='underline']">
        <u>
            <xsl:value-of select="."/>
        </u>
    </xsl:template>

    <xsl:template match="*[@render='sub']">
        <sub>
            <xsl:value-of select="."/>
        </sub>
    </xsl:template>

    <xsl:template match="*[@render='super']">
        <sup>
            <xsl:value-of select="."/>
        </sup>
    </xsl:template>

    <xsl:template match="*[@render='quoted']">
        <xsl:text>"</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>"</xsl:text>
    </xsl:template>

    <xsl:template match="*[@render='boldquoted']">
        <strong style="color:#404040;">
            <xsl:text>"</xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>"</xsl:text>
        </strong>
    </xsl:template>

    <xsl:template match="*[@render='boldunderline']">
        <strong style="color:#404040;">
            <u>
                <xsl:value-of select="."/>
            </u>
        </strong>
    </xsl:template>

    <xsl:template match="*[@render='bolditalic']">
        <strong style="color:#404040;">
            <em>
                <xsl:value-of select="."/>
            </em>
        </strong>
    </xsl:template>

    <xsl:template match="*[@render='boldsmcaps']">
        <font style="font-variant: small-caps">
            <strong style="color:#404040;">
                <xsl:value-of select="."/>
            </strong>
        </font>
    </xsl:template>

    <xsl:template match="//title[@render='smcaps']">
        <small>
            <xsl:value-of select="."/>
        </small>
    </xsl:template>

    <xsl:template match="title">
        <em>
            <xsl:value-of select="."/>
        </em>
    </xsl:template>


    <!-- ========== INTERNAL LINKS TO INVENTORY SECTIONS <ref> ========== -->

    <xsl:template match="ead/archdesc//ref">
        <xsl:variable name="linktarget">
            <xsl:value-of select="@target"/>
        </xsl:variable>
        <a href="#{$linktarget}">
            <xsl:value-of select="."/>
        </a>
    </xsl:template>

    <xsl:template match="*[@id]">
        <a name="{@id}"/>
        <xsl:value-of select="."/>
    </xsl:template>


    <!-- ========== EXTERNAL LINKS <extref> ========== -->

    <xsl:template match="*/extref">
        <xsl:choose>
            <xsl:when test="@show='new'">
                <a target="_blank" href="{@href}">
                    <xsl:apply-templates/>
                </a>                
            </xsl:when>
            <xsl:otherwise>
                <a href="{@href}">
                    <xsl:apply-templates/>
                </a>
            </xsl:otherwise>
        </xsl:choose>
            </xsl:template>

    <!-- ========== EMBEDDED IMAGES <extptr> ========== -->

    <xsl:template match="*/extptr">
        <img class="extptr" src="{@href}" align="{@altrender}" border="0" alt="{@title}">
            <xsl:apply-templates/>
        </img>
    </xsl:template>
    
    <!-- ===== Digital Archival Objects <daodesc> ===== -->
    
    <!-- Monica, Feb. 28, 2009: Added for Digital Archival Objects: -->
    
    <xsl:template match="*/daogrp">
        
        <xsl:element name="a">
            <xsl:attribute name="class">DigitalArchivalObject</xsl:attribute>
            <xsl:attribute name="target">_blank</xsl:attribute>
            <xsl:attribute name="href">
                <xsl:for-each select="daoloc[@role='reference']">
                    <xsl:apply-templates select="@href"></xsl:apply-templates>
                </xsl:for-each>
            </xsl:attribute>
            
            <xsl:for-each select="daoloc[@role='thumbnail']"> 
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:apply-templates select="@href"></xsl:apply-templates>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:apply-templates select="@title"></xsl:apply-templates>
                    </xsl:attribute>
                    <xsl:attribute name="align">
                        <xsl:apply-templates select="@altrender"></xsl:apply-templates>
                    </xsl:attribute>
                    <xsl:attribute name="border">0</xsl:attribute>
                    <xsl:attribute name="hspace">10</xsl:attribute> 
                </xsl:element>
            </xsl:for-each>
            <xsl:apply-templates select="daodesc"></xsl:apply-templates>
        </xsl:element>
        
        <br clear="all"/> <!-- Clear all to force breaks between embedded image and following table row -->
        
    </xsl:template>
    
    
    <!-- ========== GENERIC TABLES ========== -->
    
    <xsl:template name="EADtable">
        <xsl:for-each select="table/tgroup">
            <div id="EADtable">
                <table>
                <xsl:for-each select="thead/row/entry[@colname]">
                    <tr>
                        <td valign="top">
                            <xsl:choose>
                                <xsl:when test="*//emph[@render='bold']">
                                    <strong style="color:#3a6894">
                                        <xsl:value-of
                                        select="translate(entry[@colname='tablehead'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                                    </strong>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of
                            select="translate(entry[@colname='tablehead'],'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr> 
                </xsl:for-each>
                <xsl:for-each select="tbody">
        

            <xsl:for-each select="row">
            <tr>
                    <td valign="top">
                        <xsl:choose>
                            <xsl:when test="*//emph[@render='bold']">
                                <strong style="color:#404040">
                                    <xsl:value-of select="entry[@colname='1']"/>
                                </strong>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="entry[@colname='1']"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td valign="top">
                        <xsl:choose>
                            <xsl:when test="*//emph[@render='bold']">
                                <strong style="color:#404040">
                                    <xsl:value-of select="entry[@colname='2']"/>
                                </strong>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="entry[@colname='2']"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td valign="top">
                        <xsl:choose>
                            <xsl:when test="*//emph[@render='bold']">
                                <strong style="color:#404040">
                                    <xsl:value-of select="entry[@colname='3']"/>
                                </strong>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="entry[@colname='3']"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td valign="top">
                        <xsl:choose>
                            <xsl:when test="*//emph[@render='bold']">
                                <strong style="color:#404040">
                                    <xsl:value-of select="entry[@colname='4']"/>
                                </strong>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="entry[@colname='4']"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                </tr>
            </xsl:for-each>

        <p/>
                </xsl:for-each>
                </table>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="table1">
        <xsl:for-each select="table/tgroup">
            <table border="0" width="98%">
                <xsl:for-each select="thead">
                    <xsl:for-each select="row">
                        <tr>
                            <xsl:for-each select="entry">
                                <td valign="top">
                                    <strong style="color:#404040;">
                                        <xsl:apply-templates select="."/>
                                    </strong>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
                <xsl:for-each select="tbody">
                    <xsl:for-each select="row">
                        <tr>
                            <xsl:for-each select="entry">
                                <td valign="top">
                                    <xsl:apply-templates select="."/>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
                <xsl:apply-templates/>
            </table>
        </xsl:for-each>
    </xsl:template>


    <!-- ===== SECTION 1:  OVERVIEW <did> ===== -->

    <xsl:template match="archdesc/did">
        <a name="a1"/>
        <h2>
            <!-- BEGIN collapsible_overview Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsible_overview');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none;</xsl:text>
                </xsl:attribute>
                <img id="xcollapsible_overview" class="hiddenprint" src="images/DownArrowBlue.png"
                    border="0" height="10px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
            <!-- END collapsible_overview Function -->
            
        </h2>
        <!-- BEGIN collapsible_overview Division -->
        <div id="collapsible_overview" class="showhide" style="display:block;">
            <table border="0" width="96%">
                <tr>
                    <td width="5%"> </td>
                    <td width="15%"> </td>
                    <td width="76%"> </td>
                </tr>
                <xsl:if test="origination">
                    <tr>
                        <td valign="top"/>
                        <td valign="top">
                            <strong style="color:#404040;">Creator:</strong>
                        </td>
                        <td>
                            <xsl:value-of select="origination"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="unittitle">
                <tr>
                    <td valign="top"/>
                    <td valign="top">
                        <strong style="color:#404040;">Title:</strong>
                    </td>
                    <td>
                        <xsl:apply-templates select="unittitle"/>
                    </td>
                </tr>
                </xsl:if>
                <xsl:if test="unitdate">
                <tr>
                    <td valign="top"/>
                    <td valign="top">
                        <strong style="color:#404040;">Dates:</strong>
                    </td>
                    <td>
                        <!-- Joyce 2008: Changed to provide for bulk dates 245$g by adding a <xsl:for-each> with dates -->
                        <xsl:for-each select="unitdate">
                            <xsl:value-of select="."/>
                            <xsl:if test="position()!=last()">
                                <xsl:text> </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </tr>
                    </xsl:if>

                <xsl:if test="langmaterial">
                    <tr>
                        <td valign="top"/>
                        <td valign="top">
                            <strong style="color:#404040;">Language:</strong>
                        </td>
                        <td>
                            <xsl:value-of select="langmaterial"/>
                        </td>
                    </tr>
                </xsl:if>

                <xsl:if test="abstract">
                <tr>
                    <td valign="top"/>
                    <td valign="top">
                        <strong style="color:#404040;">Abstract:</strong>
                    </td>
                    <td>
                        <xsl:apply-templates select="abstract"/>
                    </td>
                </tr>
                </xsl:if>
                <xsl:if test="physdesc">
                <tr>
                    <td valign="top"/>
                    <td valign="top">
                        <strong style="color:#404040;">Quantity:</strong>
                    </td>
                    <td>
                        <xsl:value-of select="physdesc"/>
                    </td>
                </tr>
                </xsl:if>
                <xsl:if test="physloc">
                <tr>
                    <td valign="top"/>
                    <td valign="top">
                        <strong style="color:#404040;">Location:</strong>
                    </td>
                    <td>
                        <xsl:apply-templates select="physloc"/>
                    </td>
                </tr>
                    </xsl:if>
            </table>
            <br />
        </div>
        <!-- END collapsible_overview Division -->
    </xsl:template>


    <!-- ========== SECTION 2: BIOGRAPHICAL/HISTORICAL NOTE <bioghist> ========== -->

    <xsl:template match="archdesc/bioghist">
        <a name="a2"/>
        <h2>
            <!-- BEGIN collapsiblebioghist Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsiblebioghist');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none;</xsl:text>
                </xsl:attribute>
                <img id="xcollapsiblebioghist" class="hiddenprint" src="images/DownArrowBlue.png"
                border="0" height="10px" alt="Expand/Collapse" align="bottom" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
            <!-- END collapsiblebioghist Function -->
        </h2>
        <!-- BEGIN collapsiblebioghist Division  -->
        <div id="collapsiblebioghist" class="showhide" style="display:block;">
            <xsl:for-each select="daogrp">
                <xsl:apply-templates select="."></xsl:apply-templates>
            </xsl:for-each>
           <xsl:for-each select="p">
                <p>
                    <xsl:apply-templates select="."/>
                </p>
               </xsl:for-each>
            <xsl:call-template name="chronlist"/>
            <xsl:call-template name="EADtable"/>

            <xsl:for-each select="bioghist">
                <h3>
                    <!-- BEGIN collapsiblebioghistsubsection Function -->
                    <xsl:element name="a">
                        <xsl:attribute name="href">
                            <xsl:text>javascript:changeDisplay('collapsiblebioghistsubsection</xsl:text><xsl:number format="1" count="bioghist"/>'); </xsl:attribute>
                        <xsl:attribute name="style">
                            <xsl:text>cursor:pointer; color:#3a6894; text-decoration:none;</xsl:text>
                        </xsl:attribute>
                        <img class="hiddenprint" src="images/DownArrowBlue.png" border="0"
                            height="9px" alt="Collapse/Expand" align="bottom" hspace="0" vspace="0">
                            <xsl:attribute name="id">xcollapsiblebioghistsubsection<xsl:number format="1" count="bioghist"/>
                            </xsl:attribute>
                        </img>
                        <xsl:value-of select="head"/>
                    </xsl:element>
                    <!-- END collapsiblebioghistsubsection Function -->
                   
                </h3>
                <!-- BEGIN collapsiblebioghistsubsection Division  -->
                <div class="showhide" style="display:block;">
                        <xsl:attribute name="id">collapsiblebioghistsubsection<xsl:number format="1" count="bioghist"/>
                        </xsl:attribute>
                    <xsl:for-each select="p">
                    <p>
                        <xsl:apply-templates select="."/>
                    </p>
                </xsl:for-each>
            <xsl:call-template name="chronlist"/>
            <xsl:call-template name="EADtable"/>
        </div>
        <!-- END collapsiblebioghistsubsection Division -->
        </xsl:for-each>
        
            <br clear="all"/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsiblebioghist Division -->
    </xsl:template>
    
    
    <!-- ===== BEGIN Chronology Table ===== -->
    <xsl:template name="chronlist">
        <div id="chronlist">
        <xsl:for-each select="chronlist">
            <h3>
                <xsl:value-of select="head"/>
            </h3>
            <table>
                <tr>
                    <td valign="top" width="25%"> </td>
                    <td valign="top" width="auto"> </td>
                </tr>
                <tr>
                    <td valign="top" width="25%">
                        <strong style="color:#404040;">
                            <xsl:value-of select="listhead/head01"/>
                        </strong>
                    </td>
                    <td valign="top">
                        <strong style="color:#404040;">
                            <xsl:value-of select="listhead/head02"/>
                        </strong>
                    </td>
                </tr>
                <xsl:for-each select="chronitem">
                    <xsl:choose>
                        <xsl:when test="eventgrp">
                            <tr>
                                <td valign="top" width="25%">
                                    <xsl:apply-templates select="date"/>
                                </td>
                                <td valign="top">
                                    <xsl:apply-templates select="eventgrp/event[position()=1]"/>
                                </td>
                            </tr>
                            <xsl:for-each select="eventgrp/event[position()!=1]">
                                <tr>
                                    <td/>
                                    <td/>
                                    <td valign="top">
                                        <xsl:apply-templates/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <tr>
                                <td valign="top" width="25%">
                                    <xsl:apply-templates select="date"/>
                                </td>
                                <td valign="top">
                                    <xsl:for-each select="event">
                                        <xsl:apply-templates select="."/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </table>
        </xsl:for-each>
        </div>
    </xsl:template>
    <!-- ===== END Chronologies ===== -->
    

    <!-- ========== SECTION 3: SCOPE AND CONTENTS <scopecontent> ========== -->
    <xsl:template match="archdesc/scopecontent">
        <a name="a3"/>
        <h2>
            <!-- BEGIN collapsiblescopecontent Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsiblescopecontent');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none;</xsl:text>
                </xsl:attribute>
                <img id="xcollapsiblescopecontent" class="hiddenprint"
                    src="images/DownArrowBlue.png" border="0" height="10x" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
            <!-- END collapsiblescopecontent Function -->
        </h2>
    
        <!-- BEGIN collapsiblescopecontent Division  -->
        <div id="collapsiblescopecontent" class="showhide" style="display:block;">
            <xsl:for-each select="p">
                <p>
                    <xsl:apply-templates select="."/>
                </p>
            </xsl:for-each>
            <xsl:call-template name="chronlist"/>
            <xsl:if test="table">
            <xsl:call-template name="EADtable"/>
            </xsl:if>
            <xsl:for-each select="scopecontent">
                <xsl:for-each select="head">
                <h3>
                    <!-- BEGIN collapsiblescopecontentsubsection Function -->
                    <xsl:element name="a">
                        <xsl:attribute name="href">
                            <xsl:text>javascript:changeDisplay('collapsiblescopecontentsubsection</xsl:text><xsl:number format="1" count="scopecontent"/>'); </xsl:attribute>
                        <xsl:attribute name="style">
                            <xsl:text>cursor:pointer; color:#3a6894; text-decoration:none;</xsl:text>
                        </xsl:attribute>
                        <img class="hiddenprint" src="images/DownArrowBlue.png" border="0"
                            height="9px" alt="Collapse/Expand" align="bottom" hspace="0" vspace="0">
                            <xsl:attribute name="id">xcollapsiblescopecontentsubsection<xsl:number format="1" count="scopecontent"/>
                            </xsl:attribute>
                        </img>
                        <xsl:apply-templates select="."/>
                    </xsl:element>
                    <!-- END collapsiblescopecontentsubsection Function -->
                </h3>
                    </xsl:for-each>
                <!-- BEGIN collapsiblescopecontentsubsection Division  -->
                <div class="showhide" style="display:block;">
                    <xsl:attribute name="id">collapsiblescopecontentsubsection<xsl:number format="1" count="scopecontent"/>
                    </xsl:attribute>
                    <xsl:for-each select="p">
                        <p>
                            <xsl:apply-templates select="."/>
                        </p>
                    </xsl:for-each>
                    <xsl:call-template name="chronlist"/>
                    <xsl:call-template name="EADtable"/>
                </div>
                <!-- END collapsiblescopecontentsubsection Division -->
            </xsl:for-each>
            
            <br clear="all"/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsiblescopecontent Division -->
    </xsl:template>
    
            
    <!-- ========== SECTION 4: ARRANGEMENT <arrangement> ========== -->
    <xsl:template match="archdesc/arrangement">
        <a name="a4"/>
        <h2>
            <!-- BEGIN collapsiblearrangement Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsiblearrangement');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none</xsl:text>
                </xsl:attribute>
                <img id="xcollapsiblearrangement" class="hiddenprint"
                    src="images/DownArrowBlue.png" border="0" height="10px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
            <!-- END collapsiblearrangement Function -->
        </h2>
        <!-- BEGIN collapsiblearrangement Division-->
        <div id="collapsiblearrangement" class="showhide" style="display:block;">
            <xsl:for-each select="p">
                <p>
                    <xsl:apply-templates select="."/>
                </p>
            </xsl:for-each>
            <table border="0" width="85%">
                <tr>
                    <td valign="top" width="10%"> </td>
                    <td valign="top" width="5%"> </td>
                    <td valign="top" width="70%"> </td>
                </tr>

                <!-- Condition test:  
If c02 (@level="subseries"), link on item, 
if c02 not(@level="subseries"), link on list/head.
				-->
                <xsl:for-each select="list">
                    <xsl:choose>
                        <xsl:when test="not(head)">
                            <xsl:for-each select="item">
                                <tr>
                                    <td valign="top"/>
                                    <td valign="top"/>
                                    <td colspan="1">

                                        <!-- BEGIN COMMENT OUT
        <a>
         <xsl:attribute name="href">#series<xsl:number level="any" from="arrangement" format="1" count="list/item"/>
         </xsl:attribute>
         END COMMENT OUT -->

                                        <xsl:apply-templates select="."/>

                                        <!-- BEGIN COMMENT OUT
        </a>
        END COMMENT OUT -->

                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:when>

                        <xsl:otherwise>
                            <xsl:for-each select="head">
                                <tr>
                                    <td valign="top"/>
                                    <td colspan="2" valign="top">


                                        <!-- BEGIN COMMENT OUT 
	      <a>
          <xsl:attribute name="href">#series<xsl:number level="any" from="arrangement" format="1" count="list/head"/>
          </xsl:attribute>
     END COMMENT OUT -->

                                        <xsl:apply-templates select="."/>

                                        <!-- BEGIN COMMENT OUT
       </a>
    END COMMENT OUT -->

                                    </td>
                                </tr>
                            </xsl:for-each>
                            <xsl:for-each select="item">
                                <tr>
                                    <td valign="top"/>
                                    <td valign="top"/>
                                    <td colspan="1">

                                        <!-- BEGIN COMMENT OUT
         <a>
          <xsl:attribute name="href">#subseries<xsl:number level="any" from="arrangement" format="1" count="item"/>
          </xsl:attribute>
      END COMMENT OUT -->

                                        <xsl:apply-templates select="."/>

                                        <!-- BEGIN COMMENT OUT
         </a>
      END COMMENT OUT -->

                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <!-- close list -->
                <!-- ===== END LIST ===== -->



            </table>
            <p/>
            <br clear="all"/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsiblearrangement Division -->
    </xsl:template>


    <!-- ========== SECTION 6: OTHER FINDING AIDS <otherfindaid> ========== -->

    <xsl:template match="archdesc/otherfindaid">
        <a name="a6"/>
        <h2>
            <!-- BEGIN collapsibleotherfindaid Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsibleotherfindaid');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none;</xsl:text>
                </xsl:attribute>
                <img id="xcollapsibleotherfindaid" class="hiddenprint"
                    src="images/DownArrowBlue.png" border="0" height="10px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
        </h2>
        <!-- BEGIN collapsibleotherfindaid Division -->
        <div id="collapsibleotherfindaid" class="showhide" style="display:block;">
            <xsl:for-each select="p">
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:for-each>
            <p/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsibleotherfindaid Division -->
    </xsl:template>

    <!-- ========== SECTION 8: ADMINISTRATIVE INFORMATION <descgrp> ========== -->
    
    <xsl:template match="archdesc/descgrp">
        <a name="a8"/>
        <h2>
            <!-- BEGIN collapsibledescgrp Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsibledescgrp');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none;</xsl:text>
                </xsl:attribute>
                <img id="xcollapsibledescgrp" class="hiddenprint" src="images/DownArrowBlue.png"
                    border="0" height="10px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
            <!-- END collapsibledescgrp Function -->
        </h2>
        <!-- BEGIN collapsibledescgrp Divison -->
        <div id="collapsibledescgrp" class="showhide" style="display:block;">
            <xsl:choose>
                <xsl:when test="accessrestrict">
                </xsl:when>
                <xsl:otherwise>
                    <p style="color:#404040; margin-left:15px;"><strong>Availability:</strong><!-- <strong>Access Information:</strong> --></p>
                    <p style="margin-left:30px;">The collection is open for research use.</p>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:for-each
                select="accessrestrict | userestrict | phystech | bibliography | prefercite | odd | altformavail | originalsloc | custodhist | acqinfo | processinfo | appraisal">
                <xsl:if test="head">
                    <p style="color:#404040; margin-left:15px;"><strong>
                        <xsl:value-of select="head"/>
                    </strong></p>
                    <xsl:for-each select="p">
                        <p style="margin-left:30px;">
                            <xsl:apply-templates select="."/>
                        </p>
                    </xsl:for-each>
                </xsl:if>
            </xsl:for-each>
            <br clear="all"/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsibledescgrp Division -->
    </xsl:template>

    <!-- ========== SECTION 9: DETAILED DESCRIPTION <dsc> ========== -->
    <!-- Joyce/Monica 2008:
 Based on Michael Fox's EAD Cookbook dsc4.xsl
 with modification to fit MHS use and style -->

    <!-- ===== Section 9.A. <head>, <note>, and <p> ===== -->

    <xsl:template match="archdesc/dsc">
        <xsl:apply-templates/>
        <!-- <p> 
            <a href="#a0" class="hiddenprint">Return to top</a>
            </p>-->
    </xsl:template>

    <xsl:template match="dsc/head">
        <a name="a9"/>
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>


    <xsl:template match="dsc/p | dsc/note/p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>


    <!-- ===== Section 9.B. TEMPLATE: CONTAINER ===== -->
    <!-- Revised March 3, 2009
        1.  Test for physloc.  Output type attribute when present, otherwise output "Location."
        2.  Test for container.  Output type attribute when present, otherwise output "Box." -->

    <xsl:template name="container">
        <xsl:if test="physloc">
            <tr>
                <td>
                    <strong style="color:#666666;">
                        <xsl:choose>
                        <xsl:when test="physloc/@type">
                            <xsl:value-of
                                select="concat(translate(substring(physloc/@type, 1,1),'abcdefghijklmnopqrstuvwxyz',
                                'ABCDEFGHIJKLMNOPQRSTUVWXYZ'),substring(physloc/@type,2,string-length(physloc/@type)))"
                            />
                        </xsl:when>
                            <xsl:otherwise>
                                <text>Location</text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </strong>
                </td>
                <td>
                    <strong style="color:#666666;">
                        <xsl:choose>
                            <xsl:when test="container/@type">
                                <xsl:value-of
                                    select="concat(translate(substring(container/@type, 1,1),'abcdefghijklmnopqrstuvwxyz',
                                    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'),substring(container/@type,2,string-length(container/@type)))"
                                />
                            </xsl:when>
                            <xsl:when test="not(container)">
                                <xsl:text/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text> Box </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </strong>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>


    <!-- ===== Section 9.C.  TEMPLATE: COMPONENT-DID ===== -->

    <!-- This template is used generically to format <unitid>, <origination>, <unittitle>, 
 <unitdate>, and <physdesc> at all component levels. 
 Anhors for each did//ref[@id] are included.
 A space is added between each <did> element. -->

    <xsl:template name="component-did">

        <xsl:if test="unitid">
            <xsl:apply-templates select="unitid"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>

        <xsl:if test="origination">
            <xsl:apply-templates select="origination"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>

        <xsl:apply-templates select="unittitle"/>
        <xsl:text>&#x20;</xsl:text>

        <xsl:if test="unittitle/geogname">
            <xsl:apply-templates select="geogname"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>

        <xsl:if test="unittitle/imprint/geogname">
            <xsl:apply-templates select="imprint/geogname"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>

        <xsl:if test="unittitle/imprint/publisher">
            <xsl:apply-templates select="imprint/publisher"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>
        
        <xsl:if test="unittitle/imprint/date">
            <xsl:apply-templates select="imprint/date"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>

        <!-- Process unitdate when it is not a child of unittitle-->
        <xsl:for-each select="unitdate">
            <xsl:apply-templates/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:for-each>
        
        <xsl:if test="physdesc">
            <xsl:apply-templates select="physdesc"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>
        
        <xsl:if test="materialspec">
            <xsl:apply-templates select="materialspec"/>
            <xsl:text>&#x20;</xsl:text>
        </xsl:if>
        

    </xsl:template>


    <!-- ===== Section 9.D.  CONDITIONS FOR TABLE DISPLAY STYLE ===== -->

    <!-- ===== Section 9.D.1. FLAT COLLECTIONS ===== -->

    <!-- <c01> "not[@level='series] and not(@level='subseries')"
	Legacy: <dsc @id="fruin">  -->

    <!--Style used for c01 components that are file level
	descriptions with associated <physloc> and <container> data.
	The instructions here process <c0n> elements
	with calls to the templates named c0n-flat. -->



    <xsl:template match="c01">
        

        <!-- Flat collections are styled with a 12 column table. -->
        <div id="dsctable">
        <table border="0" width="98%" align="center">
            <tr>
                <td width="16%"> </td>
                <td width="10%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
                <td width="4%"> </td>
            </tr>

            <xsl:choose>
                <xsl:when test="not(@level='series') or not(@level='subseries')">
                    <!-- ==== Series ANCHOR from Section 4 <arrangement> ===== -->

                    <!-- ===== ANCHOR from <arrangement/list/item> (c01-flat) ===== -->

                    <!-- BEGIN COMMENT OUT
	   <a>
	    <xsl:attribute name="name">series<xsl:number level="any" from="dsc" format="1" count="c01"/>
	    </xsl:attribute>
	   </a>
	   END COMMENT OUT-->

                    <xsl:call-template name="c01-flat"/>
                </xsl:when>
            </xsl:choose>

            <xsl:for-each select="c02">
                <xsl:choose>
                    <xsl:when test="not(@level='series') or not(@level='subseries')">
                        <xsl:call-template name="c02-flat"/>
                    </xsl:when>
                </xsl:choose>

                <xsl:for-each select="c03">
                    <xsl:call-template name="c03-flat"/>

                    <xsl:for-each select="c04">
                        <xsl:call-template name="c04-flat"/>

                        <xsl:for-each select="c05">
                            <xsl:call-template name="c05-flat"/>

                            <xsl:for-each select="c06">
                                <xsl:call-template name="c06-flat"/>

                                <xsl:for-each select="c07">
                                    <xsl:call-template name="c07-flat"/>

                                    <xsl:for-each select="c08">
                                        <xsl:call-template name="c08-flat"/>

                                        <xsl:for-each select="c09">
                                            <xsl:call-template name="c09-flat"/>

                                            <xsl:for-each select="c10">
                                                <xsl:call-template name="c10-flat"/>

                                            </xsl:for-each>
                                            <!--Close C10-->
                                        </xsl:for-each>
                                        <!--Close c09-->
                                    </xsl:for-each>
                                    <!--Close c08-->
                                </xsl:for-each>
                                <!--Close c07-->
                            </xsl:for-each>
                            <!--Close c06-->
                        </xsl:for-each>
                        <!--Close c05-->
                    </xsl:for-each>
                    <!--Close c04-->
                </xsl:for-each>
                <!--Close c03-->
            </xsl:for-each>
            <!--Close c02-->
        </table>
        </div>
    </xsl:template>


    <!-- ===== SECTION 9.D.2.  COMPLEX, SIMPLE, and MIXED COLLECTIONS ===== -->

    <!-- Complex Condition: c01[@level='series'] and c02[@level='subseries'] 
         Legacy: dsc[@id='muller'] -->

    <!-- Simple Condition:  c01[@level='series'] 
        Legacy: dsc[@id='feith'] -->

    <!-- Mixed Condition: varying combinations of (<c01 @level="series"> and <c02 @level="subseries"] 
        Legacy: None  -->


    <xsl:template match="c01[@level='series']">
        <!-- ==== Series ANCHOR from Section 4 <arrangement> ===== -->

        <!--BEGIN COMMENT OUT
  <a>
   <xsl:attribute name="name">series<xsl:number level="any" from="dsc" format="1" count="c01"/>
   </xsl:attribute>
  </a>
  END COMMMENT OUT -->

        <xsl:call-template name="c01-complex"/>
        
        <!-- BEGIN collapsiblec01 Division -->
        
        <div class="showhide" style="display:block;">
            <xsl:attribute name="id">collapsiblec01<xsl:number format="1" count="c01[@level='series']"/>
            </xsl:attribute>
            <xsl:for-each select="abstract | langmaterial | accessrestrict |userestrict">
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:for-each>
            
            <xsl:for-each select="bioghist">
                <xsl:for-each select="head">
                    <p style="font-size:11px;">
                        <strong><xsl:apply-templates select="."/></strong>
                    </p>
                </xsl:for-each>
                <xsl:for-each select="p">
                    <p>
                        <xsl:apply-templates select="."/>
                    </p>
                </xsl:for-each>
                <xsl:if test="chronlist">
                    <xsl:call-template name="chronlist"/>
                </xsl:if>
                <br clear="all" />
            </xsl:for-each>
            
            <xsl:for-each select="scopecontent">
                <xsl:for-each select="head">
                    <p style="font-size:11px;">
                        <strong><xsl:apply-templates select="."/></strong>
                    </p>
                </xsl:for-each>
                <xsl:for-each select="p">
                    <p>
                        <xsl:apply-templates select="."/>                        
                    </p>
                </xsl:for-each>


                <xsl:if test="table">
                    <xsl:call-template name="EADtable"/>
                </xsl:if>
                <br clear="all" />               
            </xsl:for-each>
            
            
            <xsl:for-each
                select="arrangement  | processinfo | 
                acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |
                relatedmaterial | separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
                <xsl:for-each select="head">
                    <p style="font-size:11px;">
                        <strong><xsl:apply-templates/></strong>
                    </p>
                </xsl:for-each>
                <xsl:for-each select="*[not(self::head)]">
                    <p>
                        <xsl:apply-templates/>
                    </p>
                </xsl:for-each>
                <br clear="all" />
            </xsl:for-each>
            
            <xsl:for-each select="daogrp">
                <p><xsl:apply-templates select="."/></p>
            </xsl:for-each>


            <!-- Complex, simple, and mixed collections display in a 14-column HTML table. -->


                <xsl:for-each select="c02">
                    <xsl:choose>
                        <xsl:when test="@level='subseries'">

                            <!-- ===== Subseries ANCHOR from <arrangement/list/item> ===== -->

                            <!-- BEGIN COMMENT OUT
   <a>
	  <xsl:attribute name="name">subseries<xsl:number level="any" from="dsc" format="1" count="c02"/>
	  </xsl:attribute>
	  </a>
	  END COMMENT OUT -->

                            <xsl:call-template name="c02-complex"/>  
                            <!-- BEGIN collapsiblesubseries division -->
                            <div class="showhide" style="display:block;">
                                <xsl:attribute name="id">collapsiblesubseries<xsl:number level="any" from="dsc" format="1" count="c01/c02[@level='subseries']"/>
                                </xsl:attribute>
                                <div id="dsctable">
                                <table border="0" width="98%" align="center">
                                    <tr>
                                        <td width="16%"> </td>
                                        <td width="10%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                        <td width="4%"> </td>
                                    </tr>
                                <xsl:for-each select="abstract | langmaterial">
                                    <tr>
                                        <td colspan="14" valign="top">
                                            <xsl:apply-templates/>
                                        </td>
                                    </tr>
                                </xsl:for-each>                                    
                                <xsl:for-each
                                    select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
                                    acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
                                    relatedmaterial | separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
                                    <xsl:for-each select="head">
                                        <tr>
                                            <td valign="top" colspan="14">
                                                <strong>
                                                    <xsl:apply-templates/>
                                                </strong>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                    <xsl:for-each select="*[not(self::head)]">
                                        <tr>
                                            <td valign="top" colspan="14">
                                                <xsl:apply-templates/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </xsl:for-each>
                                    <xsl:for-each select="daogrp">
                                        <tr>
                                            
                                            <td colspan="13" valign="top">
                                                <xsl:apply-templates select="."/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                                                        
                                    <xsl:for-each select="c03">
                                        <xsl:call-template name="c03-complex"/>

                                        <xsl:for-each select="c04">
                                            <xsl:call-template name="c04-complex"/>
                                            
                                            <xsl:for-each select="c05">
                                                <xsl:call-template name="c05-complex"/>
                                                
                                                <xsl:for-each select="c06">
                                                    <xsl:call-template name="c06-complex"/>
                                                    
                                                    <xsl:for-each select="c07">
                                                        <xsl:call-template name="c07-complex"/>
                                                        
                                                        <xsl:for-each select="c08">
                                                            <xsl:call-template name="c08-complex"/>
                                                            
                                                            <xsl:for-each select="c09">
                                                                <xsl:call-template name="c09-complex"/>
                                                                
                                                                <xsl:for-each select="c10">
                                                                    <xsl:call-template name="c10-complex"/>
                                                                    
                                                                    <xsl:for-each select="c11">
                                                                        <xsl:call-template name="c11-complex"/>
                                                                        
                                                                        <xsl:for-each select="c12">
                                                                            <xsl:call-template name="c12-complex"/>
                                                                            <!-- close c12 -->
                                                                        </xsl:for-each>
                                                                        <!-- close c11 -->
                                                                    </xsl:for-each>
                                                                    <!-- close 10 -->
                                                                </xsl:for-each>
                                                            <!-- close c09 -->
                                                            </xsl:for-each>
                                                            <!-- close c08 -->
                                                        </xsl:for-each>
                                                        <!-- close c07 -->
                                                    </xsl:for-each>
                                                    <!-- close c06 -->
                                                </xsl:for-each>
                                                <!-- close c05 -->
                                            </xsl:for-each>
                                            <!-- close c04 -->
                                        </xsl:for-each>
                                        <!-- close c03 -->
                                    </xsl:for-each>
                                    <!-- close c02 -->
                                </table>
                                </div>
                                <!-- BEGIN COMMENT OUT 
                                <p>
                                    <a href="#a4" class="hiddenprint"><small>Return to Arrangement</small></a>
                                </p>
                                END COMMENT OUT -->
                                
                                <!-- End collapsiblesubseries division -->
                            </div>
                        </xsl:when>
                        <xsl:otherwise>
                            <div id="dsctable">
                            <table border="0" width="98%" align="center">
                                <tr>
                                    <td width="16%"> </td>
                                    <td width="10%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                    <td width="4%"> </td>
                                </tr>
                                <xsl:call-template name="c02-simple"/>
                                
                                <xsl:for-each select="c03">
                                    <xsl:call-template name="c03-simple"/>
                                    
                                    <xsl:for-each select="c04">
                                        <xsl:call-template name="c04-simple"/>
                                        
                                        <xsl:for-each select="c05">
                                            <xsl:call-template name="c05-simple"/>
                                            
                                            <xsl:for-each select="c06">
                                                <xsl:call-template name="c06-simple"/>
                                                
                                                <xsl:for-each select="c07">
                                                    <xsl:call-template name="c07-simple"/>
                                                    
                                                    <xsl:for-each select="c08">
                                                  <xsl:call-template name="c08-simple"/>
                                                        
                                                        <xsl:for-each select="c09">
                                                            <xsl:call-template name="c09-simple"/>
                                                            
                                                            <xsl:for-each select="c10">
                                                                <xsl:call-template name="c10-simple"/>
                                                                
                                                                <xsl:for-each select="c11">
                                                                    <xsl:call-template name="c11-simple"/>
                                                                    <!-- close c11 -->
                                                                </xsl:for-each>
                                                                <!-- close c10 -->
                                                            </xsl:for-each>
                                                            <!-- close c09 -->
                                                        </xsl:for-each>
                                                        <!-- close c08 -->
                                                    </xsl:for-each>
                                                    <!-- close c07 -->
                                                </xsl:for-each>
                                                <!-- close c06 -->
                                            </xsl:for-each>
                                            <!-- close c05 -->
                                        </xsl:for-each>
                                        <!-- close c04 -->
                                    </xsl:for-each>
                                    <!-- close c03 -->
                                </xsl:for-each>
                            </table>
                            </div>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- close c02 -->
                </xsl:for-each>
                <br clear="all"/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
            <hr class="hiddenprint" size="1px" style="color:#ece8e8;"/>
        </div>
        <!-- END collapsiblec01 Division -->

    </xsl:template>


    <!-- ===== Section 9.E. TEMPLATE DEFINITIONS:  FLAT, COMPLEX, SIMPLE ========== -->

    <!-- This section contains a separate named template for each table display style.
        The contents of each is identical except for the spacing that is inserted to 
        create the proper column display in HTML for each component in each style. -->


    <!-- ===== 9.E.1.  TEMPLATE: FLAT COLLECTIONS (c01-flat - c10-flat) ===== -->

    <!-- c01[not(@level='series') or not(@level='subseries')] 
        Legacy: <dsc @id="fruin">  -->

    <!-- This template is used to process c01-c10 small or flat collections
         that include c01s with associated container data.  -->

    <!-- ===== C01-FLAT ===== -->
    <xsl:template name="c01-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td colspan="10" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
			acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
			relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="9" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== CO2-FLAT ===== -->
    <xsl:template name="c02-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td colspan="9" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="8" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== CO3-FLAT ===== -->
    <xsl:template name="c03-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="8" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="7" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <!-- ===== CO4-FLAT ===== -->
    <xsl:template name="c04-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="7" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="6" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== CO5-FLAT ===== -->
    <xsl:template name="c05-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="6" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="5" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== CO6-FLAT ===== -->
    <xsl:template name="c06-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="5" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each select="abstract | langmaterial">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="4" valign="top">
                    <xsl:apply-templates/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="4" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="4" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== CO7-FLAT ===== -->
    <xsl:template name="c07-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="4" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>


    <!-- ===== CO8-FLAT ===== -->
    <xsl:template name="c08-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="3" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="2" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="2" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="2" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>


    <!-- ===== C09-FLAT ===== -->
    <xsl:template name="c09-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="2">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="1" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="1" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="1" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>


    <!-- ===== C10-FLAT ===== -->
    <xsl:template name="c10-flat">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="1" valign="bottom">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
        </xsl:for-each>
        <!-- Close <did> -->
    </xsl:template>


    <!-- ===== 9.E.2. TEMPLATE:  COMPLEX COMPONENTS (c01-complex - c12-complex) ===== -->

    <!-- <c01[@level='series'] and c02[@level='subseeries'] 
         Legacy: dsc[@id='muller'> -->

    <!-- This template is used to process c01-c12 complex components 
         that include both series at the c01 level and subseries at the c02 level
         and that do not have associated container data.  -->

    <xsl:template name="c01-complex">
        <xsl:for-each select="did">
            <h3 style="font-size:75%; background-color:#ffffff; color:#404040;">
                <!-- <span style="font-size:1em;"> -->
                    <strong>
                        <!-- BEGIN collapsiblec01 Function -->
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>javascript:changeDisplay('collapsiblec01</xsl:text><xsl:number
                                    from="dsc" format="1" count="c01"/>'); </xsl:attribute>
                            <xsl:attribute name="style">
                                <xsl:text>cursor:pointer; color: #585858; text-decoration:none;</xsl:text>
                            </xsl:attribute>
                            <img class="hiddenprint" src="images/DownArrowBlue.png" border="0"
                                height="9px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0">
                                <xsl:attribute name="id">xcollapsiblec01<xsl:number from="dsc"
                                        format="1" count="c01"/>
                                </xsl:attribute>
                            </img>&#x20;

                        <!-- END collapsiblec01 Function -->
                        <xsl:if test="unitid">
                            <xsl:value-of
                                select="translate(unitid,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                        <xsl:if test="origination">
                            <xsl:value-of
                                select="translate(origination,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                        <xsl:value-of
                            select="translate(unittitle,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                        <xsl:text>&#x20;</xsl:text>
                        <xsl:if test="unittitle/geogname">
                            <xsl:value-of
                                select="translate(geogname,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                        <xsl:if test="unittitle/imprint">
                            <xsl:value-of
                                select="translate(imprint,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                        <xsl:if test="unitdate">
                            <xsl:value-of
                                select="translate(unitdate,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                            <xsl:apply-templates select="physdesc"/>
                        </xsl:element>
                    </strong>
                <!-- </span> -->
            </h3>
        </xsl:for-each>

    </xsl:template>


    <!-- ===== C02-COMPLEX ===== -->

    <xsl:template name="c02-complex">
        <xsl:for-each select="did">
            <tr>
                <td valign="top" colspan="14">
                    <h4>
                        <!-- BEGIN collapsiblesubseries Function -->
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:text>javascript:changeDisplay('collapsiblesubseries</xsl:text><xsl:number level="any" from="dsc" format="1" count="c01/c02[@level='subseries']"/>'); </xsl:attribute>
                            <xsl:attribute name="style">
                                <xsl:text>cursor:pointer; color:#3a6894; text-decoration:none;</xsl:text>
                            </xsl:attribute>
                            <img class="hiddenprint" src="images/DownArrowBlue.png" border="0"
                                height="9px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0">
                                <xsl:attribute name="id">xcollapsiblesubseries<xsl:number level="any" from="dsc" format="1" count="c01/c02[@level='subseries']"/>
                                </xsl:attribute>
                            </img>&#x20;
                        <!-- END collapsiblesubseries Function -->
                        <xsl:if test="unitid">
                            <xsl:value-of
                                select="unitid"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                        <xsl:if test="origination">
                            <xsl:value-of
                                select="origination"/>
                            <xsl:text>&#x20;</xsl:text>
                            
                        </xsl:if>
                            <!--<xsl:value-of select="unittitle"/>  -->
                         
                        <xsl:value-of
                            select="unittitle"/>
                        <xsl:text>&#x20;</xsl:text>
                        <xsl:if test="unittitle/geogname">
                            <xsl:value-of
                                select="geogname"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                        <xsl:if test="unittitle/imprint">
                            <xsl:value-of
                                select="imprint"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                        <xsl:if test="unitdate">
                            <xsl:value-of
                                select="unitdate"/>
                            <xsl:text>&#x20;</xsl:text>
                        </xsl:if>
                            <xsl:if test="physdesc">
                                <xsl:value-of
                                    select="physdesc"/>
                                <xsl:text>&#x20;</xsl:text>
                            </xsl:if>
                        </xsl:element>
                    </h4>                    
                </td>
            </tr>
        </xsl:for-each> 
    </xsl:template>


    <!-- ===== C03-COMPLEX ===== -->

    <xsl:template name="c03-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="bottom" colspan="12">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="11" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top" colspan="11">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top" colspan="11">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="11" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C04-COMPLEX ===== -->
    <xsl:template name="c04-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="bottom" colspan="11">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="10" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="10">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="10">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="10" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C05-COMPLEX ===== -->
    <xsl:template name="c05-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="10">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="9" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C06-COMPLEX ===== -->
    <xsl:template name="c06-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="9">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="8" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C07-COMPLEX ===== -->
    <xsl:template name="c07-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="8">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each select="abstract | langmaterial">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="7" valign="top">
                    <xsl:apply-templates/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C08-COMPLEX ===== -->
    <xsl:template name="c08-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="7">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C09-COMPLEX ===== -->
    <xsl:template name="c09-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="6">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C10-COMPLEX ===== -->
    <xsl:template name="c10-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="5">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="4" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="4" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C11-COMPLEX ===== -->
    <xsl:template name="c11-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="4">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C12-COMPLEX ===== -->
    <xsl:template name="c12-complex">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="3">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="2" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="2" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>



    <!-- ===== 9.E.3. TEMPLATE:  SIMPLE COMPONENTS (c01-simple - c11-simple) ===== -->

    <!-- c01[@level='series'] 
        Legacy: dsc[@id='feith']  -->

    <!-- This template is used to process c01-c11 components
         that include only series only at the c01 level
         and that do not have associated container data.  -->

    <!-- ===== C02-SIMPLE ===== -->
    <xsl:template name="c02-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="bottom" colspan="12">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="11" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="11" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="11" valign="top">
                        <xsl:apply-templates/>
                     </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="11" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C03-SIMPLE ===== -->
    <xsl:template name="c03-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="bottom" colspan="11">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="10" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="10" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="10" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="10" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <!-- ===== C04-SIMPLE ===== -->
    <xsl:template name="c04-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="10">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="9" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="9" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


    <!-- ===== C05-SIMPLE ===== -->
    <xsl:template name="c05-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="9">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="8" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>        
        <xsl:for-each select="daogrp">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="8" valign="top">
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C06-SIMPLE ===== -->
    <xsl:template name="c06-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="8">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="7" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C07-SIMPLE ===== -->
    <xsl:template name="c07-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="7">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="6" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C08-SIMPLE ===== -->
    <xsl:template name="c08-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="6">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="5" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C09-SIMPLE ===== -->
    <xsl:template name="c09-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="5">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each select="abstract | langmaterial">
            <tr>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td colspan="4" valign="top">
                    <xsl:apply-templates/>
                </td>
            </tr>
        </xsl:for-each>
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="4" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="4" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C10-SIMPLE ===== -->
    <xsl:template name="c10-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="4">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
        <xsl:for-each
            select="scopecontent | bioghist | arrangement | userestrict | accessrestrict | processinfo |
            acqinfo | accruals | appraisal | custodhist | phystech | controlaccess/controlaccess | altformavail | bibliography |  
            relatedmaterial| separatedmaterial | originalsloc | odd | note | otherfindaid | descgrp/*">
            <xsl:for-each select="head">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <strong>
                            <xsl:apply-templates/>
                        </strong>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="*[not(self::head)]">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="3" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <!-- ===== C11-SIMPLE ===== -->
    <xsl:template name="c11-simple">
        <xsl:for-each select="did">
            <xsl:call-template name="container"/>
            <tr>
                <td valign="top">
                    <xsl:apply-templates select="physloc"/>
                </td>
                <td valign="top">
                    <xsl:apply-templates select="container"/>
                </td>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="top"/>
                <td valign="bottom" colspan="3">
                    <xsl:call-template name="component-did"/>
                </td>
            </tr>
            <xsl:for-each select="abstract | langmaterial">
                <tr>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td valign="top"/>
                    <td colspan="2" valign="top">
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
        <!-- Close <did> -->
    </xsl:template>


    <!-- ========== SECTION 5: RELATED MATERIAL <relatedmaterial> ========== -->
    <xsl:template match="archdesc/relatedmaterial">
        <a name="a5"/>
        <h2>
            <!-- BEGIN collapsiblerelatedmaterial Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsiblerelatedmaterial');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none;</xsl:text>
                </xsl:attribute>
                <img id="xcollapsiblerelatedmaterial" class="hiddenprint"
                    src="images/DownArrowBlue.png" border="0" height="10px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
            <!-- END  collapsiblerelatedmaterialFunction -->            
        </h2>
        <!-- BEGIN collapsiblerelatedmaterial Division -->
        <div id="collapsiblerelatedmaterial" class="showhide" style="display:block;">
            <xsl:for-each select="p">
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:for-each>
            <p/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsiblerelatedmaterial Division-->
    </xsl:template>
    
    <!-- ========== SECTION 5a: SEPARATED MATERIAL <separatedmaterial> ========== -->
    <xsl:template match="archdesc/separatedmaterial">
        <a name="a5a"/>
        <h2>
            <!-- BEGIN collapsibleseparatedmaterial Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsibleseparatedmaterial');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none</xsl:text>
                </xsl:attribute>
                <img id="xcollapsibleseparatedmaterial" class="hiddenprint"
                    src="images/DownArrowBlue.png" border="0" height="10px" align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
            <!-- END collapsibleseparatedmaterial Function  -->
        </h2>
        <!-- BEGIN collapsibleseparatedmaterial Division -->
        <div id="collapsibleseparatedmaterial" class="showhide" style="display:block;">
            <xsl:for-each select="p">
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:for-each>
            <p/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsibleseparatedmaterial Division -->
    </xsl:template>
    
    
    <!-- ========== SECTION 7: CATALOG HEADINGS <controlaccess> ========== -->
    <xsl:template match="archdesc/controlaccess">
        <a name="a7"/>
        <h2>
            <!-- BEGIN collapsiblecontrolaccess Function -->
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:text>javascript:changeDisplay('collapsiblecontrolaccess');</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="style">
                    <xsl:text>cursor:pointer; color:#404040; text-decoration:none;</xsl:text>
                </xsl:attribute>
                <img id="xcollapsiblecontrolaccess" class="hiddenprint"
                    src="images/DownArrowBlue.png" border="0" height="10px"  align="bottom" alt="Expand/Collapse" hspace="0" vspace="0"/>
                <xsl:value-of select="head"/>
            </xsl:element>
        </h2>
        <!-- BEGIN collapsiblecontrolaccess Division -->
        <div id="collapsiblecontrolaccess" class="showhide" style="display:block;">

            <!-- <xsl:for-each select="p">
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:for-each> -->

            <p>This collection is indexed under the following headings in the catalog of the Minnesota Historical Society. Researchers desiring materials about related topics, persons or places should <a href="https://mnpals-mhs.primo.exlibrisgroup.com/discovery/search?vid=01MNPALS_MHS:MHS&amp;lang=en" target="_blank" >search the catalog</a> using these headings.</p>

            <xsl:for-each select="controlaccess">
                <dl>
                    <xsl:for-each select="head">
                        <dt style="margin-left:30px; margin-bottom:4px; font-size:11px;"><strong style="color:#404040;">
                            <xsl:apply-templates/>
                        </strong></dt> 
                    </xsl:for-each>
                    <xsl:for-each
                        select="subject |corpname | persname | famname | genreform | title | geogname | occupation | function">
                        <dd style="margin-left:60px;">
                            <xsl:apply-templates/>
                        </dd>
                    </xsl:for-each>
                </dl>
            </xsl:for-each>
            <br clear="all"/>
            <p>
                <a href="#a0" class="hiddenprint">Return to top</a>
            </p>
        </div>
        <!-- END collapsiblecontrolaccess Division -->
    </xsl:template>

    <!-- ========== END EAD TRANSFORMATION ========== -->

    <xsl:template name="gAnalytics">
        <script src="http://www.google-analytics.com/urchin.js" type="text/javascript" /> 
        <script type="text/javascript">try { _uacct = "UA-9226775-1"; urchinTracker(); } catch(err) {}</script> 
    </xsl:template>
</xsl:stylesheet>
