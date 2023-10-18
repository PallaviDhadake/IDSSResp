<%@ Page Title="Engineering Projects| IDSS Global International Design & Software Solutions Pune India" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="projects" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="<%=Master.rootPath + "css/slider.css" %>"  rel="stylesheet" type="text/css" />
    <script src="<%=Master.rootPath + "js/slideGallery.js" %>"  type="text/javascript"></script>
    <script src="<%=Master.rootPath + "js/unslider.js" %>"  type="text/javascript"></script>
    <script>        $(function () { $('.slideGal').unslider() })</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header Starts -->
<div class="pgHeader">
    <div class="col_1140">
        <div class="page_TB_pad">
            <h1 class="pageH1 bold colorWhite"><%=pgHead %></h1>
            <ul class="bCrumb">
                    <li><a href="<%=Master.rootPath %>">Home</a></li>
                    <li>&raquo;</li>
                    <li><a href="#">Projects</a></li>
                    <li>&raquo;</li>
                    <li><%=pgHead %></li>
                </ul>
            <div class="float_clear"></div>
        </div>
    </div>
</div>
<!-- Page Header Ends -->
    <span class="space40"></span>
    <div class="col_1140 ">

        <%--<div class="w50">
            <span class="labelCap">Select Category :</span>
            <asp:DropDownList ID="ddrProj" CssClass="cmbBox" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddrProj_SelectedIndexChanged">
                <asp:ListItem Value="0"><-Select-></asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <span class="space30"></span>--%>

        <%=projMarkup %>
        <%--<div class="col_1_3 txtCenter posRelative">
            <div class="pad_5 slideGal ">
                <ul>
                    <li><img src="upload/project-photos/project-photo-1.jpg"/></li>
                    <li><img src="upload/project-photos/project-photo-2.jpg"/></li>
                </ul>
                <div class="float_clear"></div>
                <span class="space10"></span>
                <div class="themeBGPrime">
                    <div class="pad_5">
                        <span class="colorWhite">3D Modeling</span>
                    </div>
                </div>
                
            </div>
        </div>--%>

        <div class="float_clear"></div>

    </div>

        <%--<div id="architect" runat="server">
            <h2 class="pageH2 colorPrime mrg_B_10">Architecture</h2>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/architecture/proj-1.jpg" target="_blank"><img src="images/projects/architecture/thumb/proj-1.jpg" alt="3D Modeling" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">3D Modeling</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/architecture/proj-2.jpg" target="_blank"><img src="images/projects/architecture/thumb/proj-2.jpg" alt="3D Rendering" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">3D Rendering</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                       <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/architecture/proj-3.jpg" target="_blank"><img src="images/projects/architecture/thumb/proj-3.jpg" alt="ArchiCAD Modeling" class="width100"/></a>
                            </div>
                       </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">ArchiCAD Modeling</span>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="space15"></span>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                       <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/architecture/proj-4.jpg" target="_blank"><img src="images/projects/architecture/thumb/proj-4.jpg" alt="Floor Plan" class="width100"/></a>
                            </div>
                       </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Floor Plan</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/architecture/proj-5.jpg" target="_blank"><img src="images/projects/architecture/thumb/proj-5.jpg" alt="Rivet Modeling" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Rivet Modeling</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                       <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/architecture/proj-6.jpg" target="_blank"><img src="images/projects/architecture/thumb/proj-6.jpg" alt="SkechUp Modeling" class="width100"/></a>
                            </div>
                       </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">SkechUp Modeling</span>
                </div>
            </div>
            <div class="float_clear"></div>
        </div>

        <div id="civil" runat="server">
            <h2 class="pageH2 colorPrime mrg_B_10">Civil Engineering</h2>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/civilEngg/proj-1.jpg" target="_blank"><img src="images/projects/civilEngg/thumb/proj-1.jpg" alt="Grading Plans" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Grading Plans</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/civilEngg/proj-2.jpg" target="_blank"><img src="images/projects/civilEngg/thumb/proj-2.jpg" alt="Land Development" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Land Development</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/civilEngg/proj-3.jpg" target="_blank"><img src="images/projects/civilEngg/thumb/proj-3.jpg" alt="Parking Design" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Parking Design</span>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="space15"></span>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/civilEngg/proj-4.jpg" target="_blank"><img src="images/projects/civilEngg/thumb/proj-4.jpg" alt="Road Design" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Road Design</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/civilEngg/proj-5.jpg" target="_blank"><img src="images/projects/civilEngg/thumb/proj-5.jpg" alt="Structural Detailing" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Structural Detailing</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                       <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/civilEngg/proj-6.jpg" target="_blank"><img src="images/projects/civilEngg/thumb/proj-6.jpg" alt="Timber Design" class="width100"/></a>
                            </div>
                       </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Timber Design</span>
                </div>
            </div>
            <div class="float_clear"></div>
        </div>

        <div id="mechanical" runat="server">
            <h2 class="pageH2 colorPrime mrg_B_10">Mechanical Engineering</h2>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/mechanicalEngg/proj-1.jpg" target="_blank"><img src="images/projects/mechanicalEngg/thumb/proj-1.jpg" alt="3D Modeling And Assembly" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">3D Modeling And Assembly</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                       <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/mechanicalEngg/proj-2.jpg" target="_blank"><img src="images/projects/mechanicalEngg/thumb/proj-2.jpg" alt="3D Solid Model" class="width100"/></a>
                            </div>
                       </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">3D Solid Model</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/mechanicalEngg/proj-3.jpg" target="_blank"><img src="images/projects/mechanicalEngg/thumb/proj-3.jpg" alt="Assembly" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Assembly</span>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="space15"></span>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/mechanicalEngg/proj-4.jpg" target="_blank"><img src="images/projects/mechanicalEngg/thumb/proj-4.jpg" alt="Casting Component" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Casting Component</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                       <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/mechanicalEngg/proj-5.jpg" target="_blank"><img src="images/projects/mechanicalEngg/thumb/proj-5.jpg" alt="Exploded View" class="width100"/></a>
                            </div>
                       </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Exploded View</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/mechanicalEngg/proj-6.jpg" target="_blank"><img src="images/projects/mechanicalEngg/thumb/proj-6.jpg" alt="Stress Analysis" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Stress Analysis</span>
                </div>
            </div>
            <div class="float_clear"></div>
        </div>

        <div id="IT" runat="server">
            <h2 class="pageH2 colorPrime mrg_B_10">Information Technology</h2>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/infoTechnology/proj-1.jpg" target="_blank"><img src="images/projects/infoTechnology/thumb/proj-1.jpg" alt="www.idssglobal.com" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">www.idssglobal.com</span>
                </div>
            </div>--%>
            <!--
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                       <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/infoTechnology/proj-2.jpg" target="_blank"><img src="images/projects/infoTechnology/thumb/proj-2.jpg" alt="www.bluesofttechnology.com" class="width100"/></a>
                            </div>
                       </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">www.bluesofttechnology.com</span>
                </div>
            </div>
            -->
            <%--<div class="col_1_3 txtCenter">  
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/infoTechnology/proj-3.jpg" target="_blank"><img src="images/projects/infoTechnology/thumb/proj-3.jpg" alt="www.spacedesigner.co.in" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">www.spacedesigner.co.in</span>
                </div>
            </div>
            <div class="float_clear"></div>
        </div>

        <div id="geotech" runat="server">
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/asbestos-survey.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/asbestos-survey.jpg" alt="Asbestos Survey" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Asbestos Survey</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/borehole-location-plan.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/borehole-location-plan.jpg" alt="Borehole Location Plan" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Borehole Location Plan</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/cross-section.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/cross-section.jpg" alt="Cross Section" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Cross Section</span>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="space15"></span>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/excavation.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/excavation.jpg" alt="Excavation" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Excavation</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/orc.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/orc.jpg" alt="ORC" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">ORC</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/piezo.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/piezo.jpg" alt="Piezo" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Piezo</span>
                </div>
            </div>
            <div class="float_clear"></div>
            <span class="space15"></span>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/pop-ups.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/pop-ups.jpg" alt="Pop Ups" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Pop Ups</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/site-location-reginoal-road-map.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/site-location-reginoal-road-map.jpg" alt="Site Location Reginoal Road Map" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Site Location Reginoal Road Map</span>
                </div>
            </div>
            <div class="col_1_3 txtCenter">
                <div class="pad_5">
                    <div class="projImg">
                        <div class="container">
                            <div class="pad_10">
                                <a href="images/projects/geotechnical/site-plan-creation.jpg" target="_blank"><img src="images/projects/geotechnical/thumb/site-plan-creation.jpg" alt="Site Plan Creation" class="width100"/></a>
                            </div>
                        </div>
                    </div>
                    <span class="space10"></span>
                    <span class="colorPrime">Site Plan Creation</span>
                </div>
            </div>
            <div class="float_clear"></div>
        </div>--%>
</asp:Content>

