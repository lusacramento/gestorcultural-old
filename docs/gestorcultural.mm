<map version="freeplane 1.9.13">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Gestor Cultural" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_1090958577" CREATED="1409300609620" MODIFIED="1673663098636">
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<font BOLD="true"/>
<hook NAME="MapStyle" background="#2e3440">
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_note_icons="true" associatedTemplateLocation="template:/dark_nord_template.mm" followedTemplateLocation="template:/dark_nord_template.mm" followedMapLastTime="1671281560000" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_671184412" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#eceff4" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#88c0d0" WIDTH="2" TRANSPARENCY="255" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_671184412" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="11" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="bezier" COLOR="#81a1c1" WIDTH="3" DASH="SOLID"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" BORDER_WIDTH="1.9 px">
<edge STYLE="bezier" COLOR="#81a1c1" WIDTH="3"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ebcb8b">
<icon BUILTIN="clock2"/>
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" COLOR="#484747">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#5e81ac"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_779275544" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_779275544"/>
<font SIZE="14"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font NAME="Ubuntu" SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font NAME="Ubuntu" SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#eceff4">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="backend" POSITION="right" ID="ID_549397466" CREATED="1673660198334" MODIFIED="1673664453000">
<node TEXT="model" ID="ID_1194520155" CREATED="1673660256713" MODIFIED="1673660262000">
<node TEXT="entity" ID="ID_1505087301" CREATED="1673660275973" MODIFIED="1673660278738">
<node TEXT="User" ID="ID_1714997479" CREATED="1673660290253" MODIFIED="1673660315503">
<node TEXT="id:string" ID="ID_826227695" CREATED="1673660440654" MODIFIED="1673661810234"/>
<node TEXT="fullName:string" ID="ID_806254863" CREATED="1674702186003" MODIFIED="1674702196313"/>
<node TEXT="email:string" ID="ID_1348248236" CREATED="1673660334033" MODIFIED="1673661823773"/>
<node TEXT="pwd:string" ID="ID_326808992" CREATED="1673660341394" MODIFIED="1673661830335"/>
<node TEXT="isAdmin:boolean" ID="ID_1126430683" CREATED="1674670348772" MODIFIED="1674670361232"/>
<node TEXT="Projects[]" ID="ID_1404736457" CREATED="1674596776399" MODIFIED="1674596814598">
<node TEXT="Access" ID="ID_480485489" CREATED="1674669987163" MODIFIED="1674670059284">
<node TEXT="projectId:string" ID="ID_1586191797" CREATED="1674670073683" MODIFIED="1674670165158">
<arrowlink DESTINATION="ID_1312621450" STARTINCLINATION="-148.5 pt;0 pt;" ENDINCLINATION="-263.99999 pt;0 pt;"/>
</node>
<node TEXT="accessType:Enum" ID="ID_449002992" CREATED="1674596846717" MODIFIED="1674670123110">
<node TEXT="PROPONENT" ID="ID_1834972716" CREATED="1673662407712" MODIFIED="1673663674292"/>
<node TEXT="COLLABORATOR" ID="ID_673553343" CREATED="1673663646385" MODIFIED="1673663864273"/>
<node TEXT="READER" ID="ID_662898201" CREATED="1674596896716" MODIFIED="1674596936203"/>
</node>
</node>
</node>
</node>
<node TEXT="Project" ID="ID_858122465" CREATED="1673660382034" MODIFIED="1673660387421">
<node TEXT="id:string" ID="ID_1312621450" CREATED="1673660405595" MODIFIED="1673661838453"/>
<node TEXT="owner:string" ID="ID_351459251" CREATED="1673660388634" MODIFIED="1674597069720">
<arrowlink COLOR="#0033ff" TRANSPARENCY="255" DESTINATION="ID_826227695" STARTINCLINATION="-110.25 pt;0 pt;" ENDINCLINATION="-90.75 pt;0 pt;"/>
</node>
<node TEXT="edital:string" ID="ID_1050555653" CREATED="1673660466414" MODIFIED="1673661860334"/>
<node TEXT="Category" ID="ID_954373899" CREATED="1673660473575" MODIFIED="1673661897947">
<node TEXT="id:string" ID="ID_797629696" CREATED="1673661872487" MODIFIED="1673661877434"/>
<node TEXT="name:string" ID="ID_614402717" CREATED="1673661878248" MODIFIED="1673661883054">
<node TEXT="MUSICA" ID="ID_1559904894" CREATED="1673667721939" MODIFIED="1673667729286"/>
<node TEXT="ARTE_VISUAL" ID="ID_1011991821" CREATED="1673667729759" MODIFIED="1673667749786"/>
<node TEXT="TEATRO" ID="ID_248131440" CREATED="1673667735499" MODIFIED="1673667738686"/>
<node TEXT="GASTRONOMIA" ID="ID_1861898119" CREATED="1673667753899" MODIFIED="1673667759907"/>
<node TEXT="..." ID="ID_789670669" CREATED="1673667760755" MODIFIED="1673667779508"/>
</node>
</node>
<node TEXT="maxAccount:double" ID="ID_123124803" CREATED="1673660477154" MODIFIED="1673661908235"/>
<node TEXT="abstractProject:string" ID="ID_1351039745" CREATED="1673660484515" MODIFIED="1673661916395"/>
<node TEXT="proposition:string" ID="ID_628987526" CREATED="1673660494751" MODIFIED="1673661923955"/>
<node TEXT="justification:string" ID="ID_1710612504" CREATED="1673660502195" MODIFIED="1673661931634"/>
<node TEXT="Goals:[]" ID="ID_573506314" CREATED="1673660509375" MODIFIED="1673662218798">
<node TEXT="id:string" ID="ID_1617687917" CREATED="1673661984768" MODIFIED="1673661994156"/>
<node TEXT="description:string" ID="ID_267556774" CREATED="1673661995189" MODIFIED="1673662025635"/>
</node>
<node TEXT="Products:[]" ID="ID_1290285204" CREATED="1673660536916" MODIFIED="1673662211938">
<node TEXT="id:string" ID="ID_1211048757" CREATED="1673662037689" MODIFIED="1673662070837"/>
<node TEXT="name:string" ID="ID_1292287721" CREATED="1673662042369" MODIFIED="1673662063655"/>
<node TEXT="description:string" ID="ID_118702108" CREATED="1673662089629" MODIFIED="1673662138157"/>
<node TEXT="destination:string" ID="ID_1973588313" CREATED="1673662099789" MODIFIED="1673662145817"/>
</node>
<node TEXT="accessibility:[]" ID="ID_1202143928" CREATED="1673660621725" MODIFIED="1673667812986">
<node TEXT="id:string" ID="ID_1821858312" CREATED="1673667814859" MODIFIED="1673667825466"/>
<node TEXT="description:string" ID="ID_9273747" CREATED="1673667826139" MODIFIED="1673667833706"/>
</node>
<node TEXT="democratization:[]" ID="ID_786823186" CREATED="1673660651216" MODIFIED="1673667916427">
<node TEXT="id:string" ID="ID_203018467" CREATED="1673667839699" MODIFIED="1673667846907"/>
<node TEXT="description" ID="ID_604085395" CREATED="1673667847439" MODIFIED="1673667852667"/>
</node>
<node TEXT="Propagation:[]" ID="ID_1499583573" CREATED="1673661186601" MODIFIED="1673662204098">
<node TEXT="" ID="ID_412057293" CREATED="1673662199430" MODIFIED="1673662199430"/>
</node>
<node TEXT="counterpart:[]" ID="ID_469542544" CREATED="1673662255510" MODIFIED="1673667884107">
<node TEXT="id:string" ID="ID_1224367712" CREATED="1673667885720" MODIFIED="1673667896428"/>
<node TEXT="description:string" ID="ID_894313115" CREATED="1673667897120" MODIFIED="1673667906467"/>
</node>
<node TEXT="Team:[]" ID="ID_420890075" CREATED="1673660809138" MODIFIED="1673667635605">
<node TEXT="id:string" ID="ID_1300183149" CREATED="1673660828918" MODIFIED="1673667932907"/>
<node TEXT="isProponent;boolean" ID="ID_942460297" CREATED="1673661700803" MODIFIED="1673667942008"/>
<node TEXT="name:string" ID="ID_1705807578" CREATED="1673660891198" MODIFIED="1673667947368"/>
<node TEXT="cpf:string" ID="ID_1126424707" CREATED="1673660893278" MODIFIED="1673667952507"/>
<node TEXT="age:int" ID="ID_1644692343" CREATED="1673660897738" MODIFIED="1673667974867"/>
<node TEXT="gender" ID="ID_450386715" CREATED="1673660900738" MODIFIED="1673660904145">
<node TEXT="MASCULINO" ID="ID_1265848488" CREATED="1673667995381" MODIFIED="1673668002868"/>
<node TEXT="FEMININO" ID="ID_1935361637" CREATED="1673668003460" MODIFIED="1673668007948"/>
<node TEXT="TRANS HOMEM" ID="ID_1928414129" CREATED="1673668008520" MODIFIED="1673668024788"/>
<node TEXT="TRANS MULHER" ID="ID_1681229504" CREATED="1673668025581" MODIFIED="1673668029229"/>
<node TEXT="NAO_INFORMADO" ID="ID_1084848821" CREATED="1673668033941" MODIFIED="1673668050748"/>
</node>
<node TEXT="ethnicity" ID="ID_969546528" CREATED="1673660904678" MODIFIED="1673660914365">
<node TEXT="PRETA/NEGRA" ID="ID_801472709" CREATED="1673668054021" MODIFIED="1673668100289"/>
<node TEXT="PARDO" ID="ID_1981605433" CREATED="1673668065781" MODIFIED="1673668069908"/>
<node TEXT="AMARELA" ID="ID_751519271" CREATED="1673668070741" MODIFIED="1673668111929"/>
<node TEXT="INDIGENA" ID="ID_730332681" CREATED="1673668075381" MODIFIED="1673668078429"/>
<node TEXT="OUTRA" ID="ID_1178688941" CREATED="1673668079022" MODIFIED="1673668088670"/>
</node>
<node TEXT="typeOfContract" ID="ID_1799994166" CREATED="1673660914859" MODIFIED="1673660926066">
<node TEXT="MEI" ID="ID_1375032040" CREATED="1673668119821" MODIFIED="1673668122330"/>
<node TEXT="PJ" ID="ID_1343419174" CREATED="1673668123281" MODIFIED="1673668128529"/>
<node TEXT="PF" ID="ID_1625961224" CREATED="1673668130062" MODIFIED="1673668132388"/>
</node>
<node TEXT="office" ID="ID_776147853" CREATED="1673660926558" MODIFIED="1673660932247"/>
<node TEXT="qualification" ID="ID_981530379" CREATED="1673660932738" MODIFIED="1673660935785"/>
<node TEXT="assignments" ID="ID_676875837" CREATED="1673660936219" MODIFIED="1673660945306"/>
<node TEXT="unit" ID="ID_553033254" CREATED="1673660945898" MODIFIED="1673660949746"/>
<node TEXT="quantity" ID="ID_207436905" CREATED="1673660951279" MODIFIED="1673660955966"/>
<node TEXT="unitPay" ID="ID_840637731" CREATED="1673660958918" MODIFIED="1673660963786"/>
<node TEXT="TotalPay" ID="ID_1218795772" CREATED="1673660964598" MODIFIED="1673660969366"/>
</node>
<node TEXT="TimeLine" ID="ID_881492227" CREATED="1673665548242" MODIFIED="1673665557010">
<node TEXT="id:string" ID="ID_1712807606" CREATED="1673666049306" MODIFIED="1673666058534"/>
<node TEXT="name:string" ID="ID_547667076" CREATED="1673666307808" MODIFIED="1673666311557"/>
<node TEXT="type:[]" ID="ID_1756940734" CREATED="1673666059266" MODIFIED="1673666083934"/>
<node TEXT="InitialDate:date" ID="ID_1445033124" CREATED="1673666085966" MODIFIED="1673666176115"/>
<node TEXT="FinalDate:date" ID="ID_426135430" CREATED="1673666165267" MODIFIED="1673666182295"/>
</node>
<node TEXT="CoastSheet" ID="ID_21325469" CREATED="1673665584782" MODIFIED="1673665605650">
<node TEXT="id:string" ID="ID_1842706595" CREATED="1673665656782" MODIFIED="1673665673583"/>
<node TEXT="name:string" ID="ID_1422560770" CREATED="1673666262527" MODIFIED="1673666267816"/>
<node TEXT="AccountPlan:[]" ID="ID_1960585416" CREATED="1673665674382" MODIFIED="1673665761531">
<node TEXT="id:string" ID="ID_1241987811" CREATED="1673665764143" MODIFIED="1673665775092"/>
<node TEXT="description:string" ID="ID_286370449" CREATED="1673665775624" MODIFIED="1673665801072"/>
</node>
<node TEXT="unit:string" ID="ID_1527143387" CREATED="1673665830825" MODIFIED="1673665926913"/>
<node TEXT="quantity:double" ID="ID_798827985" CREATED="1673665927661" MODIFIED="1673665946433"/>
<node TEXT="amount" ID="ID_1303936526" CREATED="1673665859525" MODIFIED="1673665969914"/>
<node TEXT="total" ID="ID_356323440" CREATED="1673665863885" MODIFIED="1673666022793"/>
</node>
</node>
</node>
</node>
<node TEXT="controller" ID="ID_712687900" CREATED="1673661227481" MODIFIED="1673664443259">
<node TEXT="api/" ID="ID_1838547788" CREATED="1673661573541" MODIFIED="1673662546560">
<node TEXT="users/" ID="ID_940321" CREATED="1674845668579" MODIFIED="1674845777835">
<node TEXT=":id" ID="ID_465579161" CREATED="1674845769134" MODIFIED="1674845801992"/>
</node>
<node TEXT="user/" ID="ID_111683792" CREATED="1673661268681" MODIFIED="1673662554320">
<node TEXT="/projects" ID="ID_970196222" CREATED="1673662519533" MODIFIED="1673665491230">
<node TEXT=":project/" ID="ID_1961596345" CREATED="1673661318302" MODIFIED="1674597009776">
<node TEXT="team/" ID="ID_872883491" CREATED="1673661594385" MODIFIED="1673662850821">
<node TEXT=":person" ID="ID_1100860754" CREATED="1673662819196" MODIFIED="1674597035317"/>
</node>
<node TEXT="propagation/" ID="ID_1877783960" CREATED="1673662868957" MODIFIED="1673662876523">
<node TEXT="" ID="ID_572989193" CREATED="1673664306831" MODIFIED="1673664306831"/>
</node>
<node TEXT="products/" ID="ID_376822" CREATED="1673662888817" MODIFIED="1673662893764">
<node TEXT=":product" ID="ID_712265056" CREATED="1673662898797" MODIFIED="1673666433277"/>
</node>
<node TEXT="goals/" ID="ID_85348560" CREATED="1673662936957" MODIFIED="1673662954805">
<node TEXT=":goal" ID="ID_463497483" CREATED="1673662956497" MODIFIED="1673666437177"/>
</node>
<node TEXT="colaborators/" ID="ID_122285788" CREATED="1673663933747" MODIFIED="1673663954794">
<node TEXT=":collaborator" ID="ID_1606337962" CREATED="1673664109108" MODIFIED="1674597035955"/>
</node>
<node TEXT="timeline/" ID="ID_34044140" CREATED="1673666203427" MODIFIED="1673666211476">
<node TEXT=":name" ID="ID_710175445" CREATED="1673666295128" MODIFIED="1674588590682">
<arrowlink DESTINATION="ID_547667076" STARTINCLINATION="99.75 pt;0 pt;" ENDINCLINATION="152.25 pt;-1.5 pt;"/>
</node>
</node>
<node TEXT="CoastSheet/" ID="ID_1557909840" CREATED="1673666212427" MODIFIED="1673666226655">
<node TEXT=":coast" ID="ID_568488489" CREATED="1673666233627" MODIFIED="1674588586219">
<arrowlink DESTINATION="ID_1422560770"/>
</node>
<node TEXT="reports" ID="ID_886605496" CREATED="1673667319355" MODIFIED="1673667322143"/>
</node>
<node TEXT="reports" ID="ID_185823880" CREATED="1673667338875" MODIFIED="1673667341703"/>
</node>
</node>
<node TEXT="admin/" ID="ID_1957718009" CREATED="1673662344551" MODIFIED="1673662561680">
<node TEXT="users/" ID="ID_35772313" CREATED="1673662604334" MODIFIED="1673663015384">
<node TEXT="user" ID="ID_235019631" CREATED="1673663004998" MODIFIED="1674597035317"/>
<node TEXT="alter-qualification/" ID="ID_1241263122" CREATED="1673664234893" MODIFIED="1673664350858">
<node TEXT="user?id=&quot;&quot;&amp;qualification=&quot;&quot;" ID="ID_857493375" CREATED="1673664342031" MODIFIED="1673664401120"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="login/" ID="ID_1121113636" CREATED="1673662720874" MODIFIED="1673662741221"/>
<node TEXT="register/" ID="ID_657902276" CREATED="1673662761076" MODIFIED="1673662776204">
<node TEXT="confirmation" ID="ID_674506230" CREATED="1673663041499" MODIFIED="1673663069365"/>
</node>
</node>
<node TEXT="service" FOLDED="true" ID="ID_110462408" CREATED="1673664429892" MODIFIED="1673664438520">
<node TEXT="userService" ID="ID_1349745991" CREATED="1673664480632" MODIFIED="1673664491261">
<node TEXT="findAll()" ID="ID_823691333" CREATED="1673664636734" MODIFIED="1673664775823"/>
<node TEXT="findOne()" ID="ID_521713011" CREATED="1673664648091" MODIFIED="1673664780060"/>
<node TEXT="exists()" ID="ID_1365929136" CREATED="1673664812791" MODIFIED="1673664820684"/>
<node TEXT="save()" ID="ID_1328513574" CREATED="1673664654054" MODIFIED="1673664784452"/>
<node TEXT="findByIdAndUpdate()" ID="ID_579473905" CREATED="1673664666975" MODIFIED="1673664788532"/>
<node TEXT="findByIdAndRemove()" ID="ID_1260831943" CREATED="1673664674734" MODIFIED="1673664792221"/>
</node>
<node TEXT="projectService" ID="ID_1362267046" CREATED="1673664496753" MODIFIED="1673664581181">
<node TEXT="findAll()" ID="ID_1052408914" CREATED="1673664636734" MODIFIED="1673664775823"/>
<node TEXT="findOne()" ID="ID_393643317" CREATED="1673664648091" MODIFIED="1673664780060"/>
<node TEXT="exists()" ID="ID_552997601" CREATED="1673664812791" MODIFIED="1673664820684"/>
<node TEXT="save()" ID="ID_619816002" CREATED="1673664654054" MODIFIED="1673664784452"/>
<node TEXT="findByIdAndUpdate()" ID="ID_72644463" CREATED="1673664666975" MODIFIED="1673664788532"/>
<node TEXT="findByIdAndRemove()" ID="ID_445508003" CREATED="1673664674734" MODIFIED="1673664792221"/>
</node>
</node>
<node TEXT="repository" ID="ID_1199815249" CREATED="1673664526233" MODIFIED="1673664531980">
<node TEXT="Repository" ID="ID_729116678" CREATED="1673664533593" MODIFIED="1673664558801"/>
</node>
<node TEXT="config" ID="ID_1446185523" CREATED="1673667563297" MODIFIED="1673667572245">
<node TEXT="Db" ID="ID_1760464872" CREATED="1673667580997" MODIFIED="1673667593684"/>
</node>
</node>
<node TEXT="frontend" POSITION="left" ID="ID_33278015" CREATED="1673660208914" MODIFIED="1673664457222">
<node TEXT="/" ID="ID_949808350" CREATED="1674845919967" MODIFIED="1674845931552">
<node TEXT="cadastrar-usuario" ID="ID_1251972633" CREATED="1674845957147" MODIFIED="1674845975795"/>
<node TEXT="login" ID="ID_229245989" CREATED="1674845997787" MODIFIED="1674846005354"/>
<node TEXT="user/" ID="ID_1411347433" CREATED="1674846017287" MODIFIED="1674846046636">
<node TEXT="admin" ID="ID_1156421791" CREATED="1674846056028" MODIFIED="1674846062395"/>
<node TEXT="projeto" ID="ID_1465300467" CREATED="1674846066448" MODIFIED="1674846092775"/>
</node>
</node>
</node>
</node>
</map>
