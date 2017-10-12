<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/PublicMasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ACI_FrontEndWeb_Development.AllPages.G.AboutUsFolder.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="intro-headerAboutUs">
            <!-- change this image in custom.css-->
            <div class="container">
                <div class="row">
                    <div class="intro-messagePage col-sm-12">
                        <h1>About Us</h1>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li class="active">About Us</li>
                    </ul>
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#OurVision" data-toggle="tab" aria-expanded="true">Our Vision, Mission, Values</a></li>
                        <li><a href="#Facilities" data-toggle="tab" aria-expanded="true">Facilities</a></li>
                        <li class=""><a href="#ACIchefs" data-toggle="tab" aria-expanded="false">ACI Distinguished Chefs Advisory Panel</a></li>
                        <li class=""><a href="#OurPartners" data-toggle="tab" aria-expanded="false">Our Partners</a></li>
                        <li class=""><a href="#FAQs" data-toggle="tab" aria-expanded="false">FAQs</a></li>

                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="OurVision">
                            <div id="our-services">
                                <div class="container padding-top padding-bottom">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <h1>
                                                <span>Our</span> Mission and Vision</h1>
                                        </div>
                                    </div>
                                    <div class="row text-center">
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image3" ImageUrl="~/images/vision.jpg" runat="server" Height="240" Width="600" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <h3>Our Vision</h3>
                                                <p>
                                                    To be a Centre of Excellence in the Food & Beverage Services industry
                                                </p>
                                                <h3>Our Mission</h3>
                                                <p>
                                                    We provide quality training to help professionalise Singapore's Food & Beverage Services industry and support enterprises in their journey towards productivity enhancement and business transformation.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container padding-bottom">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <h1>
                                                <span>Our</span>Values</h1>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <div class="col-sm-6 col-md-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image4" ImageUrl="~/images/values1.jpeg" runat="server" Height="320" Width="569" />
                                                <h3>Can-Do Spirit</h3>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image1" ImageUrl="~/images/value2.jpeg" runat="server" Height="320" Width="569" />
                                                <h3>Borderless Teamwork</h3>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image2" ImageUrl="~/images/value3.jpeg" runat="server" Height="320" Width="569" />
                                                <h3>Development Orientation</h3>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image5" ImageUrl="~/images/value4.jpeg" runat="server" Height="320" Width="569" />
                                                <h3>Innovation and Enterprise</h3>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image6" ImageUrl="~/images/value5.jpeg" runat="server" Height="320" Width="569" />
                                                <h3>Nurturing and Caring Culture</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="height">
                                </div>
                            </div>
                        </div>


                        <!-- second tab-->
                        <div class="tab-pane fade" id="Facilities">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h1>Facilities</h1>
                                    <p>ACI is conceptualized and designed around five guiding principles of <strong>tradition</strong>,<strong> heritage</strong>, <strong>efficiency</strong>,<strong> productivity</strong> and<strong> innovation</strong>.</p>

                                    <h3>Traditional and Heritage</h3>
                                    <p>From the blend of colours, building materials to its artefacts, it is evident that ACI interior is specially selected and designed to reflect our Asian Tradition and Heritage. Showcasing our Asian culture, the intrinsic use of the traditional basket weaving can be seen prominently throughout ACI from its floor to the wall and all the way up to the ceiling.         </p>
                                    <p>
                                        The 5 Chinese elements i.e. Metal (金),  Wood (木), Water (水) , Fire (火) and Earth (土) and known as Wu Xing (五行) of the Chinese Zodiac are considered by the scholars in ancient China to be interdependent and creates an overall balance and harmony. ACI hence incorporated the concept into the theme and colour of our best equipped kitchens.
                                    </p>

                                    <table class="table table-striped table-hover ">
                                        <thead>
                                            <tr>
                                                <th>Kitchen</th>
                                                <th>Chinese Element</th>
                                                <th>Colour</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="active">
                                                <td>Demo & Smart Kitchens</td>
                                                <td>Metal</td>
                                                <td>Silver</td>
                                            </tr>
                                            <tr class="brown">
                                                <td>Bakery & Pastry Kitchen</td>
                                                <td>Wood</td>
                                                <td>Brown</td>
                                            </tr>
                                            <tr class="info">
                                                <td>Production Kitchen</td>
                                                <td>Water</td>
                                                <td>Blue</td>
                                            </tr>
                                            <tr class="danger">
                                                <td>Gas Kitchen</td>
                                                <td>Fire</td>
                                                <td>Red</td>
                                            </tr>
                                            <tr class="warning">
                                                <td>Induction Kitchen</td>
                                                <td>Earth</td>
                                                <td>Yellow</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p>
                                        Our kitchens also feature conventional Asian culinary equipment such as roast pits, duck ovens and traditional deck steamers. Such equipment still feature prominently in many Asian kitchens today.
                                    </p>
                                    <h3>Efficiency and Productivity
                                    </h3>
                                    <p>
                                        ACI's Kitchens are equipped with contemporary and state-of-the-art equipment. And of course, not forgetting the perfect layout that promotes efficiency and productivity through seamless preparations and cooking of food items. The kitchens are further enhanced with the introduction of purpose-built Marrone mono-blocks which are customized workstations,specially imported from Italy. These Marrone mono-blocks will definitely push the production process to the extreme.
                                    </p>

                                    <h3>Innovation
                                    </h3>
                                    <p>
                                        With an open and creative mind, the institute embraces the use of modern technology such as Vario-cookers, High pressure tilting pans, Combi-ovens, Blast chillers and Induction woks etc. We also aim to introduce the latest innovations in culinary science and technology to encourage and support enterprises on their transformation journey by adopting innovative technology.  
                                    </p>

                                    <h1>Our Kitchens</h1>
                                    <!-- row 1-->
                                    <div class="row text-center">
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image7" ImageUrl="~/images/fa1.jpg" runat="server" Height="240" Width="630" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <h3>Demo Kitchen (Metal, 金)</h3>
                                                <p>
                                                    Suite of equipment to conduct Asian and Western cooking including salamander, combi oven, induction wok, hotplate etc
                                                </p>
                                                <p>Able to accommodate up to 70 participants or convert to round-table settings</p>
                                                <p>
                                                    Equipped with two 360 degree cameras for recording as well as 2 projection screens to show live-recording, Powerpoint slides or video.
                                                </p>

                                            </div>
                                        </div>
                                    </div>

                                    <!-- row 2-->
                                    <div class="row text-center">
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image8" ImageUrl="~/images/fa2.jpg" runat="server" Height="240" Width="630" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <h3>Smart Kitchen (Metal, 金)</h3>
                                                <p>
                                                    Equipped with latest cooking equipment e.g. Vario cooker, Combi-oven, Paco-jets, Homogenizers, Sous-Vide Cookers, Thermomix etc. 
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- row 3-->
                                    <div class="row text-center">
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image9" ImageUrl="~/images/fa3.jpg" runat="server" Height="240" Width="630" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <h3>Production Kitchen (Water, 水)</h3>
                                                <p>
                                                    To train various job roles and the importance of working as a team in a catering or central kitchen
                                                </p>
                                                <p>
                                                    Equipped with walk-in freezers, walk-in chillers, cold-prep areas, Electrolux units Tandoor oven, duck oven, tilting pan etc.
                                                </p>

                                            </div>
                                        </div>
                                    </div>

                                    <!-- row 4-->
                                    <div class="row text-center">
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image10" ImageUrl="~/images/fa4.jpg" runat="server" Height="240" Width="630" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <h3>Bakery and Pastry Kitchen (Wood, 木)</h3>
                                                <p>Furnished with different bench top materials to do dim sum, ramen and other Asian and Western pastry work. </p>
                                                <p>
                                                    Equipped with proofer retarder, rotary and deck ovens, deck steamers, deep fryer, etc. 
                                                </p>

                                            </div>
                                        </div>
                                    </div>

                                    <!--row5-->
                                    <div class="row text-center">
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image11" ImageUrl="~/images/fa5.jpg" runat="server" Height="240" Width="630" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <h3>Gas Kitchen (Fire, 火)</h3>
                                                <p>
                                                    8 cooking stations which can accommodate up to 24 trainees 
                                                </p>
                                                <p>
                                                    Marrone mono block consists of a gas wok station, gas stove top, tenpanyaki and salamander  
                                                </p>

                                            </div>
                                        </div>
                                    </div>

                                    <!--row6-->
                                    <div class="row text-center">
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <asp:Image class="img-responsive img-thumbnail" ID="Image12" ImageUrl="~/images/fa6.jpg" runat="server" Height="240" Width="630" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 service">
                                            <div class="service-content">
                                                <h3>Induction Kitchen (Earth, 土)</h3>
                                                <p>
                                                    8 cooking stations which can accommodate up to 24 trainees
                                                </p>
                                                <p>
                                                    Marrone mono block consists of a induction wok station, stove top, tenpanyaki and salamander  
                                                </p>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>


                        </div>










                        <div class="tab-pane fade" id="ACIchefs">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h1>ACI Distinguished Chefs Advisory Panel</h1>
                                    <p>
                                        ACI has established a distinguished chefs advisory panel composed of accomplished culinary experts who are leaders in their field. The panel will play an advisory role offering advice and perspectives honed from years of industry knowledge. The diversity of experience and network offered by the panel will be an invaluable asset for ACI to leverage on. 
                                    </p>
                                    <p>
                                        The purpose of the panel are:
                                    </p>
                                    <p>
                                        &middot  To act as a channel of communication between ACI and industry
                                    </p>
                                    <p>
                                        &middot  To advise ACI on the development and revision of its programmes
                                    </p>
                                    <p>
                                        &middot  To advise ACI on suitable/relevant training and development programmes and internships for ACI graduates and industry
                                    </p>
                                    <p>
                                        &middot To advise ACI on issues such as new and emerging trends, changing needs of industry and employment of ACI graduates
                                    </p>
                                </div>
                                <div class="col-sm-12">
                                    <asp:Image class="img-responsive img-thumbnail" ID="Image13" ImageUrl="~/images/chef1.jpg" runat="server" Height="450" Width="1500" />
                                </div>
                                <div class="col-sm-12">
                                    <asp:Image class="img-responsive img-thumbnail" ID="Image14" ImageUrl="~/images/chef2.jpg" runat="server" Height="450" Width="1500" />
                                </div>
                                <div class="col-sm-12">
                                    <asp:Image class="img-responsive img-thumbnail" ID="Image15" ImageUrl="~/images/chef3.jpg" runat="server" Height="450" Width="1500" />
                                </div>
                                <div class="col-sm-12">
                                    <asp:Image class="img-responsive img-thumbnail" ID="Image16" ImageUrl="~/images/chef4.jpg" runat="server" Height="450" Width="1500" />
                                </div>
                                <div class="col-sm-12">
                                    <asp:Image class="img-responsive img-thumbnail" ID="Image17" ImageUrl="~/images/chef5.jpg" runat="server" Height="450" Width="1500" />
                                </div>
                                <div class="col-sm-12">
                                    <asp:Image class="img-responsive img-thumbnail" ID="Image18" ImageUrl="~/images/chef6.jpg" runat="server" Height="450" Width="1500" />
                                </div>


                            </div>

                        </div>


                      <div class="tab-pane fade" id="OurPartners">

                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h1>Our Partners</h1>
                                    </div>
                                </div>
                                <div class="col-sm-3">                                  
                                    <asp:Image class="img-responsive img-thumbnail" ID="Image19" ImageUrl="~/images/p1.jpg" runat="server" Height="140" Width="500" />
                                </div>
                                <div class="col-sm-3">                                   
                                        <asp:Image class="img-responsive img-thumbnail" ID="Image20" ImageUrl="~/images/p2.png" runat="server" Height="140" Width="500" />                             
                                </div>
                                <div class="col-sm-3">                               
                                       <asp:Image class="img-responsive img-thumbnail" ID="Image21" ImageUrl="~/images/p3.jpg" runat="server" Height="140" Width="500" />                             
                                </div>
                                <div class="col-sm-3">                               
                                       <asp:Image class="img-responsive img-thumbnail" ID="Image22" ImageUrl="~/images/p4.jpg" runat="server" Height="140" Width="500" />                          
                                </div>
                                <div class="col-sm-3">                                 
                                       <asp:Image class="img-responsive img-thumbnail" ID="Image23" ImageUrl="~/images/p5.png" runat="server" Height="140" Width="500" />                         
                                </div>
                                <div class="col-sm-3">                         
                                       <asp:Image class="img-responsive img-thumbnail" ID="Image24" ImageUrl="~/images/p6.png" runat="server" Height="140" Width="500" />                             
                                </div>
                                 <div class="col-sm-3">                      
                                        <asp:Image class="img-responsive img-thumbnail" ID="Image25" ImageUrl="~/images/p7.jpg" runat="server" Height="140" Width="500" />                             
                                </div>
                                <div class="col-sm-3">                           
                                       <asp:Image class="img-responsive img-thumbnail" ID="Image26" ImageUrl="~/images/p8.jpg" runat="server" Height="140" Width="500" />                           
                                </div>
                                <div class="col-sm-3">                         
                                       <asp:Image class="img-responsive img-thumbnail" ID="Image27" ImageUrl="~/images/p9.jpg" runat="server" Height="140" Width="500" />                            
                                </div>
                                <!--/our-clients -->
                            </div>
                          </div>


                        <div class="tab-pane fade" id="FAQs">

                            <div class="container padding-bottom">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h1>FAQs</h1>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">1. What is ACI ? Is ACI a private commercial school? Where is ACI located?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                    The Asian Culinary Institute (ACI) of Singapore is a CET (Continuing Education & Training) Institute of Nanyang Polytechnic. It is the first Anchor Provider set up in April 2015 as a partnership between the Singapore Workforce Development Agency (WDA) and Nanyang Polytechnic (NYP).
ACI aims to:
Build a pipeline of local chefs for Asian cuisines
Strengthen continual professional development for existing workers
Facilitate innovation and productivity enhancement through R&D
ACI is located at 11 Eunos Road 8, #03-01 Lifelong Learning Institute, Singapore 408601. Please use Lift Lobby A to reach our office.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">2. What are the programmes and services offered by ACI ?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    ACI offers the following programmes and services 

WSQ Full certification and modular certification training programmes in culinary arts
Short customised and public training programmes in culinary arts, service excellence, teambuilding and supervisory programmes
Seminars/masterclasses 
Consultancy services for employers in the food & beverage services sector 
Applied Research and Development services for employers in the food & beverage services sector
Placement services for Singaporeans/Singapore Permanent residents into the food & beverage services sector
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">3. What are WSQ programmes?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    The Singapore Workforce Skills Qualifications (WSQ) is a national credentialing system. It trains, develops, assesses and recognises individuals for the key competencies that companies look for in potential employees.

As an Anchor Provider for the food & beverage services sector, ACI offers Culinary Arts WSQ programmes from Certificate, Higher Certificate, Advanced Certificate, Diploma levels and Specialist Diploma levels. The programmes focus on the skills, knowledge and competencies (i.e. having the abilities to do the job well) that encompass employability, occupational and industry skills.
                                                </div>
                                            </div>
                                        </div>


                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">4. Are WSQ qualifications recognize by employers?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    Yes, WSQ qualifications are recognized by employers of Singapore. WSQ qualifications are developed jointly by the Singapore Workforce Development Agency (WDA) and employers. WSQ qualifications are endorsed by employers, unions, and industry associations in the industry.
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">5. What is the difference between a Diploma offered by Polytechnics and WSQ Diploma?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    The WSQ programme is a competency-based training programme. These competencies are developed by the Singapore Workforce Development Agency (WDA) and endorsed by employers, unions and industry associations in industry. They are translated into training modules to enable an individual to develop the required skills, knowledge and competencies to do his job well.

The WSQ Diploma also recognises past training and current credentials in addition to academic achievements. In the case of Polytechnic diploma courses, these are targeted at secondary school leavers with entry requirement of minimum GCE 5 ‘O’ levels. The polytechnic courses are full time courses which are longer, and where academic focus takes prominence, unlike WSQ qualifications which competency and skills take the centre stage.
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">6. Who should enrol for ACI Programmes?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    ACI programmes are targeted at the following:

School leavers and new entrants into the F&B services industry 
For working professionals in the Food & Beverage services industry who wish to upgrade their skills and knowledge to obtain a certificate 
Individuals who wish to change their career and enter the Food & Beverage services industry
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">7. Must I complete the full programme or can I choose to do certain module(s)?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse7" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    You can sign up any module(s) as desired to raise required skill levels and competencies or complete a full qualification programme.

This open and easy accessibility to training is the key feature of the CET training model. ACI encourages an open access approach to public wanting to enrol in WSQ modules / units or full programmes.

For each competent module, you will be awarded a Statement of Attainment (SOA). Upon completion of the necessary modules in each qualification level, you will be issued a Full Qualification Certificate issued by the Singapore Workforce Development Agency.           
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">8. What are the modules offered in the various programmes? Where can I get detailed information on courses, course fees and course schedule?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse8" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    Please check the ACI website at www.aci.edu.sg to view modules offered in various programmes. In the near future, you may also download ACI Mobile App Jobs/Courses, available in IOS and Android, for your convenience to view and apply for courses on the move.
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">9. Will I be awarded certificate if I were to take another non-prescribed module?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse9" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    Yes, the Statement of Attainment (SOA) is issued on a modular basis; a participant will be awarded the relevant SOA if they were to be assessed as competent.
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">10. Do I need to be sponsored by my company to enrol for ACI courses?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse10" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    No. Sponsorship is not a must. You can join the course on a self-paying basis.

For company sponsored, we can also arrange for a contextualised class with a minimum class size of 20 participants. Please contact us via our website for enquiries. 
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">11. Can I get a food & beverage services job after I complete my WSQ qualifications?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse11" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    The chance of getting a job with training in WSQ qualification is good.

The Statement of Attainment (SOA) that you obtained certifies that you are competent in the relevant unit. Coupled with relevant experience, ACI’s Career Services Centre will make recommendation to respective employers for their consideration  
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse12">12. Can ACI help me to look for a job in F&B industry after completion of WSQ course?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse12" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    ACI assists in job placement for Singaporeans or Singapore Permanent Residents.

Course participants can request for employment assistance by completing an Employment Assistance Request form. ACI will review your application and recommend you to respective employers for their consideration.
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse13">13. Will ACI help me to get a job if I have not attended any WSQ courses at ACI?</a>
                                                </h4>
                                            </div>
                                            <div id="collapse13" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    If you are a Singaporean or Singapore Permanent Resident, ACI will review your qualifications and work experience to assist you in job placement. Should you possess all the required qualifications and experience, we will recommend you to the respective employers for their consideration.

However, if there are skills & knowledge gaps, we will recommend you relevant WSQ courses which will enhance your employability and upon your course completion, we will recommend you to the respective employer for their consideration.
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                            </div>



                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
