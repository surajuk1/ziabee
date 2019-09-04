<?php echo $header; ?>
<?php

function get_fonts() {
	$fonts = array(
		'standard',
		'ABeeZee',
		'Abel',
		'Abril Fatface',
		'Aclonica',
		'Acme',
		'Actor',
		'Adamina',
		'Advent Pro',
		'Aguafina Script',
		'Akronim',
		'Aladin',
		'Aldrich',
		'Alef',
		'Alegreya',
		'Alegreya SC',
		'Alex Brush',
		'Alfa Slab One',
		'Alice',
		'Alike',
		'Alike Angular',
		'Allan',
		'Allerta',
		'Allerta Stencil',
		'Allura',
		'Almendra',
		'Almendra Display',
		'Almendra SC',
		'Amarante',
		'Amaranth',
		'Amatic SC',
		'Amethysta',
		'Anaheim',
		'Andada',
		'Andika',
		'Angkor',
		'Annie Use Your Telescope',
		'Anonymous Pro',
		'Antic',
		'Antic Didone',
		'Antic Slab',
		'Anton',
		'Arapey',
		'Arbutus',
		'Arbutus Slab',
		'Architects Daughter',
		'Archivo Black',
		'Archivo Narrow',
		'Arial',
		'Arimo',
		'Arizonia',
		'Armata',
		'Artifika',
		'Arvo',
		'Asap',
		'Asset',
		'Astloch',
		'Asul',
		'Atomic Age',
		'Aubrey',
		'Audiowide',
		'Autour One',
		'Average',
		'Average Sans',
		'Averia Gruesa Libre',
		'Averia Libre',
		'Averia Sans Libre',
		'Averia Serif Libre',
		'Bad Script',
		'Balthazar',
		'Bangers',
		'Basic',
		'Battambang',
		'Baumans',
		'Bayon',
		'Belgrano',
		'Belleza',
		'BenchNine',
		'Bentham',
		'Berkshire Swash',
		'Bevan',
		'Bigelow Rules',
		'Bigshot One',
		'Bilbo',
		'Bilbo Swash Caps',
		'Bitter',
		'Black Ops One',
		'Bokor',
		'Bonbon',
		'Boogaloo',
		'Bowlby One',
		'Bowlby One SC',
		'Brawler',
		'Bree Serif',
		'Bubblegum Sans',
		'Bubbler One',
		'Buda',
		'Buenard',
		'Butcherman',
		'Butterfly Kids',
		'Cabin',
		'Cabin Condensed',
		'Cabin Sketch',
		'Caesar Dressing',
		'Cagliostro',
		'Calligraffitti',
		'Cambo',
		'Candal',
		'Cantarell',
		'Cantata One',
		'Cantora One',
		'Capriola',
		'Cardo',
		'Carme',
		'Carrois Gothic',
		'Carrois Gothic SC',
		'Carter One',
		'Caudex',
		'Cedarville Cursive',
		'Ceviche One',
		'Changa One',
		'Chango',
		'Chau Philomene One',
		'Chela One',
		'Chelsea Market',
		'Chenla',
		'Cherry Cream Soda',
		'Cherry Swash',
		'Chewy',
		'Chicle',
		'Chivo',
		'Cinzel',
		'Cinzel Decorative',
		'Clicker Script',
		'Coda',
		'Coda Caption',
		'Codystar',
		'Combo',
		'Comfortaa',
		'Coming Soon',
		'Concert One',
		'Condiment',
		'Content',
		'Contrail One',
		'Convergence',
		'Cookie',
		'Copse',
		'Corben',
		'Courgette',
		'Cousine',
		'Coustard',
		'Covered By Your Grace',
		'Crafty Girls',
		'Creepster',
		'Crete Round',
		'Crimson Text',
		'Croissant One',
		'Crushed',
		'Cuprum',
		'Cutive',
		'Cutive Mono',
		'Damion',
		'Dancing Script',
		'Dangrek',
		'Dawning of a New Day',
		'Days One',
		'Delius',
		'Delius Swash Caps',
		'Delius Unicase',
		'Della Respira',
		'Denk One',
		'Devonshire',
		'Didact Gothic',
		'Diplomata',
		'Diplomata SC',
		'Domine',
		'Donegal One',
		'Doppio One',
		'Dorsa',
		'Dosis',
		'Dr Sugiyama',
		'Droid Sans',
		'Droid Sans Mono',
		'Droid Serif',
		'Duru Sans',
		'Dynalight',
		'EB Garamond',
		'Eagle Lake',
		'Eater',
		'Economica',
		'Electrolize',
		'Elsie',
		'Elsie Swash Caps',
		'Emblema One',
		'Emilys Candy',
		'Engagement',
		'Englebert',
		'Enriqueta',
		'Erica One',
		'Esteban',
		'Euphoria Script',
		'Ewert',
		'Exo',
		'Expletus Sans',
		'Fanwood Text',
		'Fascinate',
		'Fascinate Inline',
		'Faster One',
		'Fasthand',
		'Fauna One',
		'Federant',
		'Federo',
		'Felipa',
		'Fenix',
		'Finger Paint',
		'Fjalla One',
		'Fjord One',
		'Flamenco',
		'Flavors',
		'Fondamento',
		'Fontdiner Swanky',
		'Forum',
		'Francois One',
		'Freckle Face',
		'Fredericka the Great',
		'Fredoka One',
		'Freehand',
		'Fresca',
		'Frijole',
		'Fruktur',
		'Fugaz One',
		'GFS Didot',
		'GFS Neohellenic',
		'Gabriela',
		'Gafata',
		'Galdeano',
		'Galindo',
		'Gentium Basic',
		'Gentium Book Basic',
		'Geo',
		'Georgia',
		'Geostar',
		'Geostar Fill',
		'Germania One',
		'Gilda Display',
		'Give You Glory',
		'Glass Antiqua',
		'Glegoo',
		'Gloria Hallelujah',
		'Goblin One',
		'Gochi Hand',
		'Gorditas',
		'Goudy Bookletter 1911',
		'Graduate',
		'Grand Hotel',
		'Gravitas One',
		'Great Vibes',
		'Griffy',
		'Gruppo',
		'Gudea',
		'Habibi',
		'Hammersmith One',
		'Hanalei',
		'Hanalei Fill',
		'Handlee',
		'Hanuman',
		'Happy Monkey',
		'Headland One',
		'Henny Penny',
		'Herr Von Muellerhoff',
		'Holtwood One SC',
		'Homemade Apple',
		'Homenaje',
		'IM Fell DW Pica',
		'IM Fell DW Pica SC',
		'IM Fell Double Pica',
		'IM Fell Double Pica SC',
		'IM Fell English',
		'IM Fell English SC',
		'IM Fell French Canon',
		'IM Fell French Canon SC',
		'IM Fell Great Primer',
		'IM Fell Great Primer SC',
		'Iceberg',
		'Iceland',
		'Imprima',
		'Inconsolata',
		'Inder',
		'Indie Flower',
		'Inika',
		'Irish Grover',
		'Istok Web',
		'Italiana',
		'Italianno',
		'Jacques Francois',
		'Jacques Francois Shadow',
		'Jim Nightshade',
		'Jockey One',
		'Jolly Lodger',
		'Josefin Sans',
		'Josefin Slab',
		'Joti One',
		'Judson',
		'Julee',
		'Julius Sans One',
		'Junge',
		'Jura',
		'Just Another Hand',
		'Just Me Again Down Here',
		'Kameron',
		'Karla',
		'Kaushan Script',
		'Kavoon',
		'Keania One',
		'Kelly Slab',
		'Kenia',
		'Khmer',
		'Kite One',
		'Knewave',
		'Kotta One',
		'Koulen',
		'Kranky',
		'Kreon',
		'Kristi',
		'Krona One',
		'La Belle Aurore',
		'Lancelot',
		'Lato',
		'League Script',
		'Leckerli One',
		'Ledger',
		'Lekton',
		'Lemon',
		'Libre Baskerville',
		'Life Savers',
		'Lilita One',
		'Lily Script One',
		'Limelight',
		'Linden Hill',
		'Lobster',
		'Lobster Two',
		'Londrina Outline',
		'Londrina Shadow',
		'Londrina Sketch',
		'Londrina Solid',
		'Lora',
		'Love Ya Like A Sister',
		'Loved by the King',
		'Lovers Quarrel',
		'Luckiest Guy',
		'Lusitana',
		'Lustria',
		'Macondo',
		'Macondo Swash Caps',
		'Magra',
		'Maiden Orange',
		'Mako',
		'Marcellus',
		'Marcellus SC',
		'Marck Script',
		'Margarine',
		'Marko One',
		'Marmelad',
		'Marvel',
		'Mate',
		'Mate SC',
		'Maven Pro',
		'McLaren',
		'Meddon',
		'MedievalSharp',
		'Medula One',
		'Megrim',
		'Meie Script',
		'Merienda',
		'Merienda One',
		'Merriweather',
		'Merriweather Sans',
		'Metal',
		'Metal Mania',
		'Metamorphous',
		'Metrophobic',
		'Michroma',
		'Milonga',
		'Miltonian',
		'Miltonian Tattoo',
		'Miniver',
		'Miss Fajardose',
		'Modern Antiqua',
		'Molengo',
		'Molle',
		'Monda',
		'Monofett',
		'Monoton',
		'Monsieur La Doulaise',
		'Montaga',
		'Montez',
		'Montserrat',
		'Montserrat Alternates',
		'Montserrat Subrayada',
		'Moul',
		'Moulpali',
		'Mountains of Christmas',
		'Mouse Memoirs',
		'Mr Bedfort',
		'Mr Dafoe',
		'Mr De Haviland',
		'Mrs Saint Delafield',
		'Mrs Sheppards',
		'Muli',
		'Mystery Quest',
		'Neucha',
		'Neuton',
		'New Rocker',
		'News Cycle',
		'Niconne',
		'Nixie One',
		'Nobile',
		'Nokora',
		'Norican',
		'Nosifer',
		'Nothing You Could Do',
		'Noticia Text',
		'Noto Sans',
		'Noto Serif',
		'Nova Cut',
		'Nova Flat',
		'Nova Mono',
		'Nova Oval',
		'Nova Round',
		'Nova Script',
		'Nova Slim',
		'Nova Square',
		'Numans',
		'Nunito',
		'Odor Mean Chey',
		'Offside',
		'Old Standard TT',
		'Oldenburg',
		'Oleo Script',
		'Oleo Script Swash Caps',
		'Open Sans',
		'Open Sans Condensed',
		'Oranienbaum',
		'Orbitron',
		'Oregano',
		'Orienta',
		'Original Surfer',
		'Oswald',
		'Over the Rainbow',
		'Overlock',
		'Overlock SC',
		'Ovo',
		'Oxygen',
		'Oxygen Mono',
		'PT Mono',
		'PT Sans',
		'PT Sans Caption',
		'PT Sans Narrow',
		'PT Serif',
		'PT Serif Caption',
		'Pacifico',
		'Paprika',
		'Parisienne',
		'Passero One',
		'Passion One',
		'Pathway Gothic One',
		'Patrick Hand',
		'Patrick Hand SC',
		'Patua One',
		'Paytone One',
		'Peralta',
		'Permanent Marker',
		'Petit Formal Script',
		'Petrona',
		'Philosopher',
		'Piedra',
		'Pinyon Script',
		'Pirata One',
		'Plaster',
		'Play',
		'Playball',
		'Playfair Display',
		'Playfair Display SC',
		'Podkova',
		'Poiret One',
		'Poller One',
		'Poly',
		'Pompiere',
		'Pontano Sans',
		'Poppins',
		'Port Lligat Sans',
		'Port Lligat Slab',
		'Prata',
		'Preahvihear',
		'Press Start 2P',
		'Princess Sofia',
		'Prociono',
		'Prosto One',
		'Puritan',
		'Purple Purse',
		'Quando',
		'Quantico',
		'Quattrocento',
		'Quattrocento Sans',
		'Questrial',
		'Quicksand',
		'Quintessential',
		'Qwigley',
		'Racing Sans One',
		'Radley',
		'Raleway',
		'Raleway Dots',
		'Rajdhani',
		'Rambla',
		'Rammetto One',
		'Ranchers',
		'Rancho',
		'Rationale',
		'Redressed',
		'Reenie Beanie',
		'Revalia',
		'Ribeye',
		'Ribeye Marrow',
		'Righteous',
		'Risque',
		'Roboto',
		'Roboto Condensed',
		'Roboto Slab',
		'Rochester',
		'Rock Salt',
		'Rokkitt',
		'Romanesco',
		'Ropa Sans',
		'Rosario',
		'Rosarivo',
		'Rouge Script',
		'Ruda',
		'Rufina',
		'Ruge Boogie',
		'Ruluko',
		'Rum Raisin',
		'Ruslan Display',
		'Russo One',
		'Ruthie',
		'Rye',
		'Sacramento',
		'Sail',
		'Salsa',
		'Sanchez',
		'Sancreek',
		'Sansita One',
		'Sarina',
		'Satisfy',
		'Scada',
		'Schoolbell',
		'Seaweed Script',
		'Sevillana',
		'Seymour One',
		'Shadows Into Light',
		'Shadows Into Light Two',
		'Shanti',
		'Share',
		'Share Tech',
		'Share Tech Mono',
		'Shojumaru',
		'Short Stack',
		'Siemreap',
		'Sigmar One',
		'Signika',
		'Signika Negative',
		'Simonetta',
		'Sintony',
		'Sirin Stencil',
		'Six Caps',
		'Skranji',
		'Slackey',
		'Smokum',
		'Smythe',
		'Sniglet',
		'Snippet',
		'Snowburst One',
		'Sofadi One',
		'Sofia',
		'Sonsie One',
		'Sorts Mill Goudy',
		'Source Code Pro',
		'Source Sans Pro',
		'Special Elite',
		'Spicy Rice',
		'Spinnaker',
		'Spirax',
		'Squada One',
		'Stalemate',
		'Stalinist One',
		'Stardos Stencil',
		'Stint Ultra Condensed',
		'Stint Ultra Expanded',
		'Stoke',
		'Strait',
		'Sue Ellen Francisco',
		'Sunshiney',
		'Supermercado One',
		'Suwannaphum',
		'Swanky and Moo Moo',
		'Syncopate',
		'Tangerine',
		'Taprom',
		'Tauri',
		'Teko',
		'Telex',
		'Tenor Sans',
		'Text Me One',
		'The Girl Next Door',
		'Tienne',
		'Times New Roman',
		'Tinos',
		'Titan One',
		'Titillium Web',
		'Trade Winds',
		'Trocchi',
		'Trochut',
		'Trykker',
		'Tulpen One',
		'Ubuntu',
		'Ubuntu Condensed',
		'Ubuntu Mono',
		'Ultra',
		'Uncial Antiqua',
		'Underdog',
		'Unica One',
		'UnifrakturCook',
		'UnifrakturMaguntia',
		'Unkempt',
		'Unlock',
		'Unna',
		'VT323',
		'Vampiro One',
		'Varela',
		'Varela Round',
		'Vast Shadow',
		'Vibur',
		'Vidaloka',
		'Viga',
		'Voces',
		'Volkhov',
		'Vollkorn',
		'Voltaire',
		'Waiting for the Sunrise',
		'Wallpoet',
		'Walter Turncoat',
		'Warnes',
		'Wellfleet',
		'Wendy One',
		'Wire One',
		'Yantramanav',
		'Yanone Kaffeesatz',
		'Yellowtail',
		'Yeseva One',
		'Yesteryear',
		'Zeyada'	
	);
	return $fonts;
}

?>

<link href='https://fonts.googleapis.com/css?family=Poppins:700,600,500,400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/template_options.css" />
<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>  
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
<script type="text/javascript" src="view/javascript/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="view/javascript/beforeafter/jquery-ui.js"></script>
<script type="text/javascript" src="view/javascript/beforeafter/jquery.beforeafter-1.4.min.js"></script>
<script type="text/javascript">
$.fn.tabs = function() {
	var selector = this;
	
	this.each(function() {
		var obj = $(this); 
		
		$(obj.attr('href')).hide();
		
		$(obj).click(function() {
			$(selector).removeClass('selected');
			
			$(selector).each(function(i, element) {
				$($(element).attr('href')).hide();
			});
			
			$(this).addClass('selected');
			
			$($(this).attr('href')).show();
			
			return false;
		});
	});

	$(this).show();
	
	$(this).first().click();
};
</script>

<?php echo $column_left; ?>
<div id="content"><div class="container-fluid">
	<div class="page-header">
	    <h1>halona Theme Options</h1>
	    <ul class="breadcrumb">
		     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		      <?php } ?>
	    </ul>
	  </div>

	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } elseif ($success) {  ?>
		<div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>

<!-- Theme Options -->

<div class="set-size" id="theme-options">
	
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	
		<!-- MULTISTORE -->
		<div id="tb_store_select">
			<label class="inline">Store</label>
			<select name="d_store_id" id="d_store_id">
			<?php foreach ($stores as $store): ?>
				<option value="<?php echo 'index.php?route=extension/module/halona&store_id=' . $store['store_id'] . '&user_token=' . $_GET['user_token']; ?>"<?php if($store_id == $store['store_id']) echo ' selected="selected"'; ?>><?php echo $store['name']; ?></option>
			<?php endforeach; ?>
			</select>
		</div>
					    
		<input type="hidden" name="store_id" value="<?php echo $store_id; ?>" />
					    
		<script type="text/javascript">
			$(document).ready(function (){
				$("#d_store_id").bind("change", function() {
					window.location = $(this).val();
				});
				
				$("#form input").keypress(function(event) {
				    if (event.which == 13) {
				        return false;
				    }
				});
				
				$(".button-add").click(function() {
					$(".add-skin").show();
					return false;
				});
			});
		</script>
		<!-- END MULTISTORE -->
		
		<!-- Unlimited theme skins -->
		<div class="content theme-skins" style="overflow: visible;position: relative;z-index: 1">
			<div>
				<ul class="skins">
					<?php $liczba_skinow = 0; if(isset($skins)) { foreach($skins as $skin) { $liczba_skinow++; } } ?>
					<?php $aktywny_skin = false; if($liczba_skinow > 0) { ?>
					<li><p class="active-skin">Active<br>skin:</p></li>
					<li>
					     <div class="arrow"></div>
						<select name="skin" class="select-skins">
							<?php foreach($skins as $skin) { ?>
							<option<?php if($skin == $active_skin_edit) { $aktywny_skin = true; echo ' selected="selected"'; } ?> value="<?php echo $skin; ?>" style="font-size: 12px !important"><?php echo $skin; ?></option>
							<?php } ?>
						</select>
						<input type="hidden" name="save_skin" value="<?php echo $active_skin_edit; ?>" />
					</li>
					<li><input type="submit" name="button-active" class="button-active"></li>
					<?php } ?>
					<li><a onclick="#" class="button-add"><span>Add</span></a><div class="add-skin"><input type="text" name="add-skin-name" class="add-skin-name" value=""><input type="submit" name="add-skin" value="Add skin" class="button-add-skin"></div></li>
					<?php if($liczba_skinow > 0) { ?>
					<li><input type="submit" name="button-edit" class="button-edit"></li>
					<li><input type="submit" name="button-delete" class="button-delete" onclick="return confirm('Are you sure you want to delete?')"></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		
		<?php if($liczba_skinow > 0 && ($active_skin != '' || $aktywny_skin == true)) { ?>
		<!-- Content -->
		
		<div class="content">
		
			<div>
				<!-- Tabs -->
				
				<div class="bg-tabs">
				
					<!-- General, Design, Footer TABS -->
					
					<div id="tabs" class="htabs main-tabs">
                        <div class="menu-switcher"></div>
						<a href="#tab_general" id="general"><span>General settings</span></a>
						<a href="#tab_design" id="design"><span>Design <br>& colors</span></a>
						<a href="#tab_footer" id="tfooter"><span>Custom footer</span></a>
						<a href="#tab_custom_block" id="tcustomblock"><span>Custom block</span></a>
						<a href="#tab_custom_code" id="tcustomcode"><span>Custom code</span></a>
						<a href="#tab_payment" id="tpayment"><span>Payment icons</span></a>
						<a href="#tab_widgets" id="twidgets"><span>Widgets</span></a>
						<a href="#tab_compressor_code" id="tcompressorcode"><span>Compressor code</span></a>
						<a href="#tab_install_data" id="tinstalldata"><span>Install data</span></a>
						<a href="#tab_advanced_settings" id="tadvancedsettings"><span>Advanced settings</span></a>
					
					</div>
					
					<!-- End General, Design Footer Tabs -->
					
					<!-- /////////////////// General -->
					
					<div id="tab_general" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_general" class="htabs tabs-design">
						
							<a href="#tab_layout" id="tlayout"><span>Layout</span></a>
							<a href="#tab_product" id="tproduct"><span>Product</span></a>
							<a href="#tab_category" id="tcategory"><span>Category</span></a>
							<a href="#tab_header" id="theader"><span>Header</span></a>
							<a href="#tab_translations" id="ttranslations"><span>Translations</span></a>
							<a href="#tab_banners" id="tbanners"><span>Banners</span></a>
						
						</div>
						
						<!-- **************** Tab GENERAL OPTIONS -->
						
						<div id="tab_layout" class="tab-content">
                            <div class="input with-status">
                                <p>Responsive Design:</p>
                                <?php if($responsive_design == 0 && $responsive_design != '') { echo '<div class="status status-off" title="0" rel="responsive_design"></div>'; } else { echo '<div class="status status-on" title="1" rel="responsive_design"></div>'; } ?>
                                <input name="responsive_design" value="<?php echo $responsive_design; ?>" id="responsive_design" type="hidden" />
                                <div class="clear"></div>
                            </div>
							
							<!-- Input -->
							<div class="input">
								<p>Page Width:</p>
								<select name="page_width" class="select-page-width">
									<option value="1" <?php if($page_width == 1) { echo 'selected="selected"'; } ?>>Wide (1220px)</option>
									<option value="3" <?php if($page_width == 3) { echo 'selected="selected"'; } ?>>Standard (980px)</option>
									<option value="2" <?php if($page_width == 2) { echo 'selected="selected"'; } ?>>Full width</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input page-width" <?php if($page_width != 2) { echo 'style="display:none"'; } ?>>
								<p>Max width:</p>
								<input type="text" name="max_width" value="<?php echo $max_width; ?>" style="margin-right:10px;width:60px">
								<div style="float:left;width:auto;padding-top:12px"><span style="color:#808080;font-size:11px">px</span></div>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Spacing between columns:</p>
								<select name="spacing_between_columns">
									<option value="1" <?php if($spacing_between_columns == 1) { echo 'selected="selected"'; } ?>>Default (30px)</option>
									<option value="2" <?php if($spacing_between_columns == 2) { echo 'selected="selected"'; } ?>>Type 2 (20px)</option>
								</select>
								<div class="clear"></div>
							</div>
							
									<!-- Input -->
									<div class="input">
										<p>Page Direction:</p>
										<div class="list-language">
											<?php foreach($languages as $language) { ?>
											<div class="language select">
												<?php $language_id = $language['language_id']; ?>
												<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
												<select type="text" name="page_direction[<?php echo $language_id; ?>]" >
							                <option value="LTR" <?php if(isset($page_direction[$language_id]) && $page_direction[$language_id] == 'LTR') { echo 'selected'; } ?>>LTR (Left To Right)</option>
							                <option value="RTL" <?php if(isset($page_direction[$language_id]) && $page_direction[$language_id] == 'RTL') { echo 'selected'; } ?>>RTL (Right To Left)</option>
							            </select>
											</div>
											<?php } ?>
										</div>
										<div class="clear"></div>
									</div>
							
							<div class="section">
                                <div class="section-title">
                                    <h4>Sections</h4>
                                </div>
                                <div class="section-content">
                                    <!-- Input -->
                                    <div class="input">
                                        <p>Main:</p>
                                        <select name="main_layout">
                                            <option value="1" <?php if($main_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($main_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="7" <?php if($main_layout == 7) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="3" <?php if($main_layout == 3) { echo 'selected="selected"'; } ?>>Fixed with shadow</option>
                                            <option value="4" <?php if($main_layout == 4) { echo 'selected="selected"'; } ?>>Fixed without background</option>
                                            <option value="5" <?php if($main_layout == 5) { echo 'selected="selected"'; } ?>>Fixed without background type 2</option>
                                            <option value="6" <?php if($main_layout == 6) { echo 'selected="selected"'; } ?>>Fixed without background type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                               

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Header:</p>
                                        <select name="header_layout">
                                            <option value="1" <?php if($header_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($header_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($header_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($header_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Slideshow:</p>
                                        <select name="slideshow_layout">
                                            <option value="1" <?php if($slideshow_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($slideshow_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($slideshow_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($slideshow_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Breadcrumb:</p>
                                        <select name="breadcrumb_layout">
                                            <option value="1" <?php if($breadcrumb_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($breadcrumb_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($breadcrumb_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($breadcrumb_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Content:</p>
                                        <select name="content_layout">
                                            <option value="1" <?php if($content_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($content_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($content_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($content_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Custom Footer:</p>
                                        <select name="custom_footer_layout">
                                            <option value="1" <?php if($custom_footer_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($custom_footer_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($custom_footer_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($custom_footer_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Footer:</p>
                                        <select name="footer_layout">
                                            <option value="1" <?php if($footer_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($footer_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($footer_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($footer_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
						</div>
						
						<!-- Product -->
						<div id="tab_product" class="tab-content">
                            <div class="section">
                                <div class="input with-status">
                                    <p style="width:270px">Lazy loading images:</p>
                                    <?php if($lazy_loading_images == 0 && $lazy_loading_images != '') { echo '<div class="status status-off" title="0" rel="lazy_loading_images"></div>'; } else { echo '<div class="status status-on" title="1" rel="lazy_loading_images"></div>'; } ?>
                                    <input name="lazy_loading_images" value="<?php echo $lazy_loading_images; ?>" id="lazy_loading_images" type="hidden" />
                                    <div class="clear"></div>
                                </div>
                            </div>
							<div class="section">
                                <div class="input with-status">
                                    <p style="width:270px">Sale badge:</p>
                                    <?php if($display_text_sale == 0 && $display_text_sale != '') { echo '<div class="status status-off" title="0" rel="display_text_sale"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_text_sale"></div>'; } ?>
                                    <input name="display_text_sale" value="<?php echo $display_text_sale; ?>" id="display_text_sale" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Type Sale:</p>
                                    <select name="type_sale">
                                        <option value="0" <?php if($type_sale =='0'){echo ' selected="selected"';} ?>>Text</option>
                                        <option value="1" <?php if($type_sale =='1'){echo ' selected="selected"';} ?>>%</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Text Sale:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="sale_text[<?php echo $language_id; ?>]" <?php if(isset($sale_text[$language_id])) { echo 'value="'.$sale_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input with-status">
                                    <p style="width:270px">Display New:</p>
                                    <?php if($display_text_new == 0 && $display_text_new != '') { echo '<div class="status status-off" title="0" rel="display_text_new"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_text_new"></div>'; } ?>
                                    <input name="display_text_new" value="<?php echo $display_text_new; ?>" id="display_text_new" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Text New:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="new_text[<?php echo $language_id; ?>]" <?php if(isset($new_text[$language_id])) { echo 'value="'.$new_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
							<div class="section">
                                <div class="section-title">
                                <h4>Product page</h4>
                                </div>
                                <div class="section-content">
                                    <div class="input">
                                        <p style="width:270px">Previous next products buttons:</p>
                                        <select name="product_breadcrumb">
                                            <option value="0" <?php if($product_breadcrumb =='0'){echo ' selected="selected"';} ?>>With details</option>
                                            <option value="1" <?php if($product_breadcrumb =='1'){echo ' selected="selected"';} ?>>Only button</option>
                                            <option value="2" <?php if($product_breadcrumb =='2'){echo ' selected="selected"';} ?>>Disable</option>
                                        </select>
                                        <a href="http://themenis.com/opencart/halona/doc" class="hint-tooltip" data-toggle="tooltip" title="Go to the documentation to se how it works" target="_blank"></a>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Product image zoom:</p>
                                        <select name="product_image_zoom">
                                            <option value="0" <?php if($product_image_zoom =='0'){echo ' selected="selected"';} ?>>Cloud Zoom</option>
                                            <option value="1" <?php if($product_image_zoom =='1'){echo ' selected="selected"';} ?>>Inner Cloud Zoom</option>
                                            <option value="2" <?php if($product_image_zoom =='2'){echo ' selected="selected"';} ?>>Default</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Product image size:</p>
                                        <select name="product_image_size">
                                            <option value="1" <?php if($product_image_size =='1'){echo ' selected="selected"';} ?>>Small</option>
                                            <option value="2" <?php if($product_image_size =='2' || $product_image_size < 1){echo ' selected="selected"';} ?>>Medium</option>
                                            <option value="3" <?php if($product_image_size =='3'){echo ' selected="selected"';} ?>>Large</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Position image additional:</p>
                                        <select name="position_image_additional">
                                            <option value="1" <?php if($position_image_additional =='1'){echo ' selected="selected"';} ?>>Bottom</option>
                                            <option value="2" <?php if($position_image_additional =='2'){echo ' selected="selected"';} ?>>Left</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input with-status">
                                        <p style="width:270px">Product social share:</p>
                                        <?php if($product_social_share == 0 && $product_social_share != '') { echo '<div class="status status-off" title="0" rel="product_social_share"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_social_share"></div>'; } ?>
                                        <input name="product_social_share" value="<?php echo $product_social_share; ?>" id="product_social_share" type="hidden" />
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input with-status">
                                        <p style="width:270px">Related products:</p>
                                        <?php if($product_related_status == 0 && $product_related_status != '') { echo '<div class="status status-off" title="0" rel="product_related_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_related_status"></div>'; } ?>
                                        <input name="product_related_status" value="<?php echo $product_related_status; ?>" id="product_related_status" type="hidden" />
                                        <div class="clear"></div>
                                    </div>


                                    <div class="input">
                                        <p style="width:270px">Option radio style:</p>
                                        <select name="product_page_radio_style">
                                            <option value="0" <?php if($product_page_radio_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                                            <option value="1" <?php if($product_page_radio_style =='1'){echo ' selected="selected"';} ?>>Button</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Option radio image size:</p>
                                        <input type="text" name="product_page_radio_image_width" style="width:60px" value="<?php echo $product_page_radio_image_width; ?>" />
                                        <div style="float:left;width:auto;padding-right:15px;position:relative;margin-left:-5px;padding-top:12px"> x </div>
                                        <input type="text" name="product_page_radio_image_height" style="width:60px" value="<?php echo $product_page_radio_image_height; ?>" />
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Option checkbox style:</p>
                                        <select name="product_page_checkbox_style">
                                            <option value="0" <?php if($product_page_checkbox_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                                            <option value="1" <?php if($product_page_checkbox_style =='1'){echo ' selected="selected"';} ?>>Button</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
							<div class="section">
                                <div class="section-title">
                                    <h4>Product grid</h4>
                                </div>
                                <div class="section-content">
                                    <div class="input">
                                        <p style="width:270px">Product number per row:</p>
                                        <select name="product_per_pow">
                                            <option value="3"<?php if($product_per_pow =='3'){echo ' selected="selected"';} ?>>3</option>
                                            <option value="4"<?php if($product_per_pow =='4' || $product_per_pow < 3){echo ' selected="selected"';} ?>>4</option>
                                            <option value="5"<?php if($product_per_pow =='5'){echo ' selected="selected"';} ?>>5</option>
                                            <option value="6"<?php if($product_per_pow =='6'){echo ' selected="selected"';} ?>>6</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                                
                                    <div class="input">
                                        <p style="width:270px">Product image effect:</p>
                                        <select name="product_image_effect">
                                            <option value="0"<?php if($product_image_effect =='0'){echo ' selected="selected"';} ?>>None</option>
                                            <option value="1"<?php if($product_image_effect =='1'){echo ' selected="selected"';} ?>>Swap image effect</option>
                                            <option value="2"<?php if($product_image_effect =='2'){echo ' selected="selected"';} ?>>Zoom image effect</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                                    
                                    <!-- Input -->
                                    <div class="input">
                                    	<p style="width:270px">jQuery countdown translate:</p>
                                    	<div class="list-language">
                                    		<?php foreach($languages as $language) { ?>
                                    		<div class="language select">
                                    			<?php $language_id = $language['language_id']; ?>
                                    			<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                    			<select type="text" name="jquery_countdown_translate[<?php echo $language_id; ?>]" >	
                                    			
                                    			<?php
                                    				if ($handle = opendir('../catalog/view/theme/halona/js/countdown/')) {
                                    				
                                    				    while (false !== ($entry = readdir($handle))) {
                                    				
                                    				        if ($entry != "." && $entry != "..") { ?>
                                    				
                                    				            <option value="<?php echo $entry; ?>" <?php if(isset($jquery_countdown_translate[$language_id]) && $jquery_countdown_translate[$language_id] == $entry) { echo 'selected'; } ?>><?php echo $entry; ?></option>
                                    				        <?php }
                                    				    }
                                    				
                                    				    closedir($handle);
                                    				}
                                    			 ?>
                                        </select>
                                    		</div>
                                    		<?php } ?>
                                    	</div>
                                    	<div class="clear"></div>
                                    </div>

                                    <div class="input with-status">
                                        <p style="width:270px">Quick view:</p>
                                        <?php if($quick_view == 0) { echo '<div class="status status-off" title="0" rel="quick_view"></div>'; } else { echo '<div class="status status-on" title="1" rel="quick_view"></div>'; } ?>
                                        <input name="quick_view" value="<?php echo $quick_view; ?>" id="quick_view" type="hidden" />
                                        <div class="clear"></div>
                                    </div>
                                    
                                    <div class="inputs-grouped">
                                        <div class="pull-left">
                                            <div class="input">
                                                <p style="width:272px">Display elements on product grid:</p>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                        <div class="pull-left">
                                            
                                            <div class="input inline">
                                                <label style="width:240px"> 
                                                    <?php if($display_specials_countdown == 0 || $display_specials_countdown == '') { echo '<div class="status status-off" title="0" rel="display_specials_countdown"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_specials_countdown"></div>'; } ?>
                                                    <input name="display_specials_countdown" value="<?php echo $display_specials_countdown; ?>" id="display_specials_countdown" type="hidden" />
                                                    <span>specials countdown </span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($display_add_to_wishlist == 0 && $display_add_to_wishlist != '') { echo '<div class="status status-off" title="0" rel="display_add_to_wishlist"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_wishlist"></div>'; } ?>
                                                    <input name="display_add_to_wishlist" value="<?php echo $display_add_to_wishlist; ?>" id="display_add_to_wishlist" type="hidden" />
                                                    <span>add to wishlist</span>
                                                </label>
                                            </div>
                                            <br>
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($display_add_to_compare == 0 && $display_add_to_compare != '') { echo '<div class="status status-off" title="0" rel="display_add_to_compare"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_compare"></div>'; } ?>
                                                    <input name="display_add_to_compare" value="<?php echo $display_add_to_compare; ?>" id="display_add_to_compare" type="hidden" />
                                                    <span>add to compare</span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($display_add_to_cart == 0 && $display_add_to_cart != '') { echo '<div class="status status-off" title="0" rel="display_add_to_cart"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_cart"></div>'; } ?>
                                                    <input name="display_add_to_cart" value="<?php echo $display_add_to_cart; ?>" id="display_add_to_cart" type="hidden" />
                                                    <span>add to cart</span>
                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="inputs-grouped">
                                        <div class="pull-left">
                                            <div class="input">
                                                <p style="width:272px">Product scroll:</p>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                        <div class="pull-left">
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_latest == 0 && $product_scroll_latest != '') { echo '<div class="status status-off" title="0" rel="product_scroll_latest"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_latest"></div>'; } ?>
                                                    <input name="product_scroll_latest" value="<?php echo $product_scroll_latest; ?>" id="product_scroll_latest" type="hidden" />
                                                    <span>latest</span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_bestsellers == 0 && $product_scroll_bestsellers != '') { echo '<div class="status status-off" title="0" rel="product_scroll_bestsellers"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_bestsellers"></div>'; } ?>
                                                    <input name="product_scroll_bestsellers" value="<?php echo $product_scroll_bestsellers; ?>" id="product_scroll_bestsellers" type="hidden" /> 
                                                    <span>bestsellers</span>
                                                </label>
                                            </div>
                                            <br>
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_featured == 0 && $product_scroll_featured != '') { echo '<div class="status status-off" title="0" rel="product_scroll_featured"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_featured"></div>'; } ?>
                                                    <input name="product_scroll_featured" value="<?php echo $product_scroll_featured; ?>" id="product_scroll_featured" type="hidden" />
                                                    <span>featured</span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_specials == 0 && $product_scroll_specials != '') { echo '<div class="status status-off" title="0" rel="product_scroll_specials"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_specials"></div>'; } ?>
                                                    <input name="product_scroll_specials" value="<?php echo $product_scroll_specials; ?>" id="product_scroll_specials" type="hidden" />
                                                    <span>specials</span>
                                                </label>
                                            </div>
                                            <br>
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_related == 0 && $product_scroll_related != '') { echo '<div class="status status-off" title="0" rel="product_scroll_related"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_related"></div>'; } ?>
                                                    <input name="product_scroll_related" value="<?php echo $product_scroll_related; ?>" id="product_scroll_related" type="hidden" />
                                                    <span>related</span>
                                                </label>
                                            </div>
<!--                                            
                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- latest</p>
                                                <?php if($product_scroll_latest == 0 && $product_scroll_latest != '') { echo '<div class="status status-off" title="0" rel="product_scroll_latest"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_latest"></div>'; } ?>
                                                <input name="product_scroll_latest" value="<?php echo $product_scroll_latest; ?>" id="product_scroll_latest" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- featured</p>
                                                <?php if($product_scroll_featured == 0 && $product_scroll_featured != '') { echo '<div class="status status-off" title="0" rel="product_scroll_featured"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_featured"></div>'; } ?>
                                                <input name="product_scroll_featured" value="<?php echo $product_scroll_featured; ?>" id="product_scroll_featured" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- bestsellers</p>
                                                <?php if($product_scroll_bestsellers == 0 && $product_scroll_bestsellers != '') { echo '<div class="status status-off" title="0" rel="product_scroll_bestsellers"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_bestsellers"></div>'; } ?>
                                                <input name="product_scroll_bestsellers" value="<?php echo $product_scroll_bestsellers; ?>" id="product_scroll_bestsellers" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- specials</p>
                                                <?php if($product_scroll_specials == 0 && $product_scroll_specials != '') { echo '<div class="status status-off" title="0" rel="product_scroll_specials"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_specials"></div>'; } ?>
                                                <input name="product_scroll_specials" value="<?php echo $product_scroll_specials; ?>" id="product_scroll_specials" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- related</p>
                                                <?php if($product_scroll_related == 0 && $product_scroll_related != '') { echo '<div class="status status-off" title="0" rel="product_scroll_related"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_related"></div>'; } ?>
                                                <input name="product_scroll_related" value="<?php echo $product_scroll_related; ?>" id="product_scroll_related" type="hidden" />
                                                <div class="clear"></div>
                                            </div>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
							
						</div>
						
						<!-- Category -->
						<div id="tab_category" class="tab-content">
                            <div class="section last">
                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Product grid number per row:</p>
                                    <select name="product_per_pow2">
                                        <option value="2"<?php if($product_per_pow2 =='2'){echo ' selected="selected"';} ?>>2</option>
                                        <option value="3"<?php if($product_per_pow2 =='3'){echo ' selected="selected"';} ?>>3</option>
                                        <option value="4"<?php if($product_per_pow2 =='4' || $product_per_pow2 < 2){echo ' selected="selected"';} ?>>4</option>
                                        <option value="5"<?php if($product_per_pow2 =='5'){echo ' selected="selected"';} ?>>5</option>
                                        <option value="6"<?php if($product_per_pow2 =='6'){echo ' selected="selected"';} ?>>6</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Default list/grid:</p>
                                    <select name="default_list_grid">
                                        <option value="0" <?php if($default_list_grid =='0'){echo ' selected="selected"';} ?>>List</option>
                                        <option value="1" <?php if($default_list_grid =='1'){echo ' selected="selected"';} ?>>Grid</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Refine search style:</p>
                                    <select name="refine_search_style">
                                        <option value="0" <?php if($refine_search_style =='0'){echo ' selected="selected"';} ?>>With images</option>
                                        <option value="1" <?php if($refine_search_style =='1'){echo ' selected="selected"';} ?>>Text only</option>
                                        <option value="2" <?php if($refine_search_style =='2'){echo ' selected="selected"';} ?>>Disable</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Refine search number per row:</p>
                                    <select name="refine_search_number">
                                        <option value="2"<?php if($refine_search_number =='2'){echo ' selected="selected"';} ?>>2</option>
                                        <option value="3"<?php if($refine_search_number =='3'|| $refine_search_number < 2){echo ' selected="selected"';} ?>>3</option>
                                        <option value="4"<?php if($refine_search_number =='4'){echo ' selected="selected"';} ?>>4</option>
                                        <option value="5"<?php if($refine_search_number =='5'){echo ' selected="selected"';} ?>>5</option>
                                        <option value="6"<?php if($refine_search_number =='6'){echo ' selected="selected"';} ?>>6</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Refine search image size:</p>
                                    <input type="text" name="refine_image_width" style="width:60px" value="<?php echo $refine_image_width; ?>" />
                                    <div style="float:left;width:auto;padding-right:15px;position:relative;margin-left:-5px;padding-top:12px"> x </div>
                                    <input type="text" name="refine_image_height" style="width:60px" value="<?php echo $refine_image_height; ?>" />
                                    <div class="clear"></div>
                                </div>
                            </div>
						</div>
						
						<!-- Header -->
						<div id="tab_header" class="tab-content">
                            <div class="section">
                                <div class="input with-status">
                                    <p style="width:370px">Always show vertical megamenu in home page:</p>
                                    <?php if($show_vertical_menu == 0) { echo '<div class="status status-off" title="0" rel="show_vertical_menu"></div>'; } else { echo '<div class="status status-on" title="1" rel="show_vertical_menu"></div>'; } ?>
                                    <input name="show_vertical_menu" value="<?php echo $show_vertical_menu; ?>" id="show_vertical_menu" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input with-status">
                                    <p style="width:370px">Always show vertical megamenu in category page:</p>
                                    <?php if($show_vertical_menu_category_page == 0) { echo '<div class="status status-off" title="0" rel="show_vertical_menu_category_page"></div>'; } else { echo '<div class="status status-on" title="1" rel="show_vertical_menu_category_page"></div>'; } ?>
                                    <input name="show_vertical_menu_category_page" value="<?php echo $show_vertical_menu_category_page; ?>" id="show_vertical_menu_category_page" type="hidden" />
                                    <div class="clear"></div>
                                </div>
                                
                                <div class="input with-status">
                                    <p style="width:370px">Always show vertical megamenu in product page:</p>
                                    <?php if($show_vertical_menu_product_page == 0) { echo '<div class="status status-off" title="0" rel="show_vertical_menu_product_page"></div>'; } else { echo '<div class="status status-on" title="1" rel="show_vertical_menu_product_page"></div>'; } ?>
                                    <input name="show_vertical_menu_product_page" value="<?php echo $show_vertical_menu_product_page; ?>" id="show_vertical_menu_product_page" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input with-status">
                                    <p style="width:370px">Quick Search Auto-Suggest:</p>
                                    <?php if($quick_search_autosuggest == 0 && $quick_search_autosuggest != '') { echo '<div class="status status-off" title="0" rel="quick_search_autosuggest"></div>'; } else { echo '<div class="status status-on" title="1" rel="quick_search_autosuggest"></div>'; } ?>
                                    <input name="quick_search_autosuggest" value="<?php echo $quick_search_autosuggest; ?>" id="quick_search_autosuggest" type="hidden" />
                                    <div class="clear"></div>
                                </div>
                                
                                <div class="input with-status">
                                    <p style="width:370px">Fixed header/menu:</p>
                                    <?php if($fixed_header == 0) { echo '<div class="status status-off" title="0" rel="fixed_header"></div>'; } else { echo '<div class="status status-on" title="1" rel="fixed_header"></div>'; } ?>
                                    <input name="fixed_header" value="<?php echo $fixed_header; ?>" id="fixed_header" type="hidden" />
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="section">
                                <p style="margin: 10px 0">
                                <span style="color: #de3609; font-weight: 600">Here you can choose only header type = elements position, margins, paddings</span><br>
                                    If you need content from other header like phone number you need to set it in custom modules.<br>
                                Headers color you can change in Design & Colors › Colors
                                </p>
                            </div>
							
                            <div class="section accordion opened">
                                <div class="section-title">
                                    <h4 >Universal, simple<br> headers</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content no-pad">
                                    <div class="hint">
                                        You can set these headers for any skin you want
                                    </div>
                                    <div class="input">
                                        <div class="custom-headers" style="float:left;width: 750px">
                                            <div class="header_name">Header 1</div>
                                            <div class="header_type <?php if($header_type < 2) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="1" <?php if($header_type < 2) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_01.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>
                                            
                                            <div class="header_name">Header 2</div>
                                            <div class="header_type <?php if($header_type == 2) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="2" <?php if($header_type == 2) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_02.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">Header 3</div>
                                            <div class="header_type <?php if($header_type == 5) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="5" <?php if($header_type == 5) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_03.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>
                                            
                                            <div class="header_name">Header 4</div>
                                            <div class="header_type <?php if($header_type == 6) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="6" <?php if($header_type == 6) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_04.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">Header 5</div>
                                            <div class="header_type <?php if($header_type == 7) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="7" <?php if($header_type == 7) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_05.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">Header 6</div>
                                            <div class="header_type <?php if($header_type == 9) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="9" <?php if($header_type == 9) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_06.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">Header 7</div>
                                            <div class="header_type <?php if($header_type == 11) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="11" <?php if($header_type == 11) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_07.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">Header 8</div>
                                            <div class="header_type <?php if($header_type == 12) { echo 'active"'; } ?>">
                                                <label>
                                                <input type="radio" name="header_type" value="12" <?php if($header_type == 12) { echo 'checked="checked"'; } ?> />
                                                <img src="view/image/module_template/header_08.jpg" alt="" />
                                                <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">Header 9</div>
                                            <div class="header_type <?php if($header_type == 17) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="17" <?php if($header_type == 17) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_09.jpg" alt="" />
                                                    <div class="clear"></div>   
                                                </label>
                                            </div>

                                            <div class="header_name">Header 10</div>
                                            <div class="header_type <?php if($header_type == 20) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="20" <?php if($header_type == 20) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_10.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="section accordion last">
                                <div class="section-title">
                                    <h4 >Advanced<br> headers</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content  no-pad">
                                    <div class="hint">
                                        It's best to use them with selected skins<br>
                                        You can use them with others skins but with changes in <span class="color-red">"Custom Modules"</span> and <span class="color-red">"MegaMenu"</span><br>
                                        or <span class="color-red">"Sample Data"</span> installation<br><br>

                                        <span style="font-weight: 400">
                                            Remember that each skin have demo admin panel so you can check settings for each module.
                                        </span>
                                    </div>
                                    <div class="input">
                                        <div class="custom-headers" style="float:left;width: 750px">
                                     
                                            <div class="header_name">
                                                <span>Header 11</span>
                                                <ul>
                                                    <li>Barber</li>
                                                    <li>Computer 3</li>
                                                    <li>Furniture</li>
                                                    <li>Natural Cosmetics</li>
                                                    <li>Wine</li>
                                                    <li>Skins without Vertical megamenu</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 3) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="3" <?php if($header_type == 3) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_11.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 12</span>
                                                <ul>
                                                    <li>fashion 3</li>
                                                    <li>fashion simple</li>
                                                    <li>jewelry</li>
                                                    <li>jewelry black</li>
                                                    <li>Skins without Vertical megamenu</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 4) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="4" <?php if($header_type == 4) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_12.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 13</span>
                                                <ul>
                                                    <li>medic</li>
                                                    <li>cosmetics2</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 8) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="8" <?php if($header_type == 8) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_13.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 14</span>
                                                <ul>
                                                    <li>fashion 2</li>
                                                    <li>Skins without Vertical megamenu</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 10) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="10" <?php if($header_type == 10) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_14.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 15</span>
                                                <ul>
                                                    <li>Market</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 13) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="13" <?php if($header_type == 13) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_15.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 16</span>
                                                <ul>
                                                    <li>Material arts</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 14) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="14" <?php if($header_type == 14) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_16.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            
                                            <div class="header_name">
                                                <span>Header 17</span>
                                                <ul>
                                                    <li>Sport</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 15) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="15" <?php if($header_type == 15) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_17.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 18</span>
                                                <ul>
                                                    <li>Exclusive</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 16) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="16" <?php if($header_type == 16) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_18.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            
                                            <div class="header_name">
                                                <span>Header 19</span>
                                                <ul>
                                                    <li>Coffe</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 18) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="18" <?php if($header_type == 18) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_19.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 20</span>
                                                <ul>
                                                    <li>Car parts</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 19) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="19" <?php if($header_type == 19) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_20.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 21</span>
                                                <ul>
                                                    <li>Flowers</li>
                                                    <li>Sport winter</li>
                                                    <li>Skins without Vertical megamenu</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 21) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="21" <?php if($header_type == 21) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_21.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 22</span>
                                                <ul>
                                                    <li>Audio</li>
                                                    <li>Skins without Vertical megamenu</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 22) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="22" <?php if($header_type == 22) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_22.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 23</span>
                                                <ul>
                                                    <li>Holidays</li>
                                                    <li>Skins without Vertical megamenu</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 23) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="23" <?php if($header_type == 23) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_23.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 24</span>
                                                <ul>
                                                    <li>Books</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 24) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="24" <?php if($header_type == 24) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_24.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 25</span>
                                                <ul>
                                                    <li>Ceramica</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 25) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="25" <?php if($header_type == 25) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_25.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>

                                            <div class="header_name">
                                                <span>Header 26</span>
                                                <ul>
                                                    <li>Lingerie</li>
                                                    <li>Skins without Vertical megamenu</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 26) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="26" <?php if($header_type == 26) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_26.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>
                                            
                                            <div class="header_name">
                                                <span>Header 27</span>
                                                <ul>
                                                    <li>Fashion7</li>
                                                </ul>
                                            </div>
                                            <div class="header_type <?php if($header_type == 27) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="27" <?php if($header_type == 27) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_27.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
							</div>
						</div>
						
						<!-- Translations -->
						<div id="tab_translations" class="tab-content">
							<div class="section last">
                                <div class="input">
                                    <p style="width:200px">Welcome text in top bar:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="welcome_text[<?php echo $language_id; ?>]" <?php if(isset($welcome_text[$language_id])) { echo 'value="'.$welcome_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Shopping cart:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="shopping_cart_text[<?php echo $language_id; ?>]" <?php if(isset($shopping_cart_text[$language_id])) { echo 'value="'.$shopping_cart_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Home:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="home_text[<?php echo $language_id; ?>]" <?php if(isset($home_text[$language_id])) { echo 'value="'.$home_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Add to compare:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="add_to_compare_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_compare_text[$language_id])) { echo 'value="'.$add_to_compare_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Add to wishlist:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="add_to_wishlist_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_wishlist_text[$language_id])) { echo 'value="'.$add_to_wishlist_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Quickview:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="quickview_text[<?php echo $language_id; ?>]" <?php if(isset($quickview_text[$language_id])) { echo 'value="'.$quickview_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">More details:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="more_details_text[<?php echo $language_id; ?>]" <?php if(isset($more_details_text[$language_id])) { echo 'value="'.$more_details_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Our brands:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="our_brands_text[<?php echo $language_id; ?>]" <?php if(isset($our_brands_text[$language_id])) { echo 'value="'.$our_brands_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Limited time offer:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="limited_time_offer_text[<?php echo $language_id; ?>]" <?php if(isset($limited_time_offer_text[$language_id])) { echo 'value="'.$limited_time_offer_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Previous product:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="previous_product_text[<?php echo $language_id; ?>]" <?php if(isset($previous_product_text[$language_id])) { echo 'value="'.$previous_product_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Next product:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="next_product_text[<?php echo $language_id; ?>]" <?php if(isset($next_product_text[$language_id])) { echo 'value="'.$next_product_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">All categories:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="all_categories_text[<?php echo $language_id; ?>]" <?php if(isset($all_categories_text[$language_id])) { echo 'value="'.$all_categories_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Shop by car:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="shop_by_car_text[<?php echo $language_id; ?>]" <?php if(isset($shop_by_car_text[$language_id])) { echo 'value="'.$shop_by_car_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Shop by brand:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="shop_by_brand_text[<?php echo $language_id; ?>]" <?php if(isset($shop_by_brand_text[$language_id])) { echo 'value="'.$shop_by_brand_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
						</div>
						
						
						<div id="tab_banners" class="tab-content">
						         <div class="input with-status">
						             <p style="width:140px">Hover effect:</p>
						             <?php if($hover_effect == 0) { echo '<div class="status status-off" title="0" rel="hover_effect"></div>'; } else { echo '<div class="status status-on" title="1" rel="hover_effect"></div>'; } ?>
						             <input name="hover_effect" value="<?php echo $hover_effect; ?>" id="hover_effect" type="hidden" />
						             <div class="clear"></div>
						         </div>
						         
						         <div class="hint" style="margin-top: 25px">Hover over image below to see effect.</div>
						         
                                    <div class="input">
                                        <div class="custom-banners" style="float:left;width: 615px">
                                            <input type="hidden" name="hover_effect_type" value="<?php if($hover_effect_type > 1) { echo $hover_effect_type; } else { echo 1; } ?>" />
                                             
                                            <div class="banner_name">Hover effect 1</div>
                                            <div class="banners-effect-1 hover_effect_type <?php if($hover_effect_type < 2) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="1" <?php if($hover_effect_type < 2) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>
                                            
                                            <div class="banner_name">Hover effect 2</div>
                                            <div class="banners-effect-2 hover_effect_type <?php if($hover_effect_type == 2) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="2" <?php if($hover_effect_type == 2) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>

                                            <div class="banner_name">Hover effect 3</div>
                                            <div class="banners-effect-3 hover_effect_type <?php if($hover_effect_type == 3) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="3" <?php if($hover_effect_type == 3) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>
                                            
                                            <div class="banner_name">Hover effect 4</div>
                                            <div class="banners-effect-4 hover_effect_type <?php if($hover_effect_type == 4) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="4" <?php if($hover_effect_type == 4) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>

                                            <div class="banner_name">Hover effect 5</div>
                                            <div class="banners-effect-5 hover_effect_type <?php if($hover_effect_type == 5) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="5" <?php if($hover_effect_type == 5) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>

                                            <div class="banner_name">Hover effect 6</div>
                                            <div class="banners-effect-6 hover_effect_type <?php if($hover_effect_type == 6) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="6" <?php if($hover_effect_type == 6) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>

                                            <div class="banner_name">Hover effect 7</div>
                                            <div class="banners-effect-7 hover_effect_type <?php if($hover_effect_type == 7) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="7" <?php if($hover_effect_type == 7) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>

                                            <div class="banner_name">Hover effect 8</div>
                                            <div class="banners-effect-8 hover_effect_type <?php if($hover_effect_type == 8) { echo 'active"'; } ?>">
                                                <label>
                                                <input type="radio" class="hover_effect_types" value="8" <?php if($hover_effect_type == 8) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>

                                            <div class="banner_name">Hover effect 9</div>
                                            <div class="banners-effect-9 hover_effect_type <?php if($hover_effect_type == 9) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="9" <?php if($hover_effect_type == 9) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>

                                            <div class="banner_name">Hover effect 10</div>
                                            <div class="banners-effect-10 hover_effect_type <?php if($hover_effect_type == 10) { echo 'active"'; } ?>">
                                                <label>
                                                    <input type="radio" class="hover_effect_types" value="10" <?php if($hover_effect_type == 10) { echo 'checked="checked"'; } ?> />
                                                    <div class="banners"><div><a href="javascript: void()" onclick="void()"><img src="view/image/module_template/banner-01.png" alt="" /></a></div></div>
                                                </label>
                                            </div>
                                        </div>
                                   </div>
						</div>
						
						<!-- **************** END TAB GENERAL OPTIONS -->
								
					</div>
					
					<!-- ////////////////////// End General -->
					
					<!-- Design -->
					
					<div id="tab_design" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_design" class="htabs tabs-design">
						
							<a href="#tab_font" id="tfont"><span>Font</span></a>
							<a href="#tab_colors" id="tcolors"><span>Colors</span></a>
							<a href="#tab_backgrounds" id="tbackgrounds"><span>Backgrounds</span></a>
						
						</div>
						
						<!-- Font, colors, background -->
						
						<!-- Font -->
					
						<div id="tab_font" class="tab-content">
                            <div class="section">
                                <!-- Status -->
                                <?php if($font_status == 1) { echo '<div class="status status-on" title="1" rel="font_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="font_status"></div>'; } ?>
                                <input name="font_status" value="<?php echo $font_status; ?>" id="font_status" type="hidden" />
                            </div>
							
							<div class="section last">
                                <div class="section-title">
                                    <!-- Title -->
                                    <h4>Font settings</h4>
                                </div>
                                <div class="section-content">
                                <!-- Input -->
							
                                    <div class="input">

                                        <p>Body Font:</p>
                                        <select name="body_font">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($body_font == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="body_font_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($body_font_weight==$x || ($x == 4 && $body_font_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <select name="body_font_px" style="width:90px;margin-right:15px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($body_font_px==$x || ($x == 13 && $body_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>
                                        
                                        <select name="body_font_very_small_transform" style="width:190px">

                                            <option value="uppercase" <?php if($body_font_very_small_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>
                                            <option value="none" <?php if($body_font_very_small_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>

                                        </select>
                                        <div class="clear" style="height: 10px"></div>
                                        <p style="width:60px; margin-left: 338px; margin-right: 5px">Smaller</p>
                                        <select name="body_font_smaller_px" style="width:90px;margin-right:15px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($body_font_smaller_px==$x || ($x == 12 && $body_font_smaller_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>
                                        <div class="clear" style="height: 10px"></div>
                                        <p style="width:90px;margin-left: 310px; margin-right: 5px">Very small</p>
                                        <select name="body_font_very_small_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                                <option value="<?php echo $x; ?>" <?php if($body_font_very_small_px==$x || ($x == 11 && $body_font_very_small_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>


                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Categories bar:</p>
                                        <select name="categories_bar">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($categories_bar == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="categories_bar_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_bar_weight==$x || ($x == 6 && $categories_bar_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <select name="categories_bar_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_bar_px==$x || ($x == 14 && $categories_bar_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>
                                        <select name="categories_bar_line_height" style="width:90px">

                                            <?php for( $x = 0; $x <= 9; $x++ ) { ?>
                                              <option value="1.<?php echo $x; ?>" <?php if($categories_bar_line_height == '1.' . $x || ($x == 6 && $categories_bar_line_height < 1)){echo ' selected="selected"';} ?>>1.<?php echo $x; ?></option>
                                            <?php } ?>

                                        </select>

                                        <select name="categories_bar_transform" style="width:190px">

                                            <option value="none" <?php if($categories_bar_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>
                                            <option value="uppercase" <?php if($categories_bar_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>

                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Categories submenu heading:</p>
                                        <select name="categories_submenu_heading">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($categories_submenu_heading == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="categories_submenu_heading_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_submenu_heading_weight==$x || ($x == 5 && $categories_submenu_heading_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <select name="categories_submenu_heading_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_submenu_heading_px==$x || ($x == 20 && $categories_submenu_heading_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>
                                        <select name="categories_submenu_heading_line_height" style="width:90px">

                                            <?php for( $x = 0; $x <= 9; $x++ ) { ?>
                                              <option value="1.<?php echo $x; ?>" <?php if($categories_submenu_heading_line_height == '1.' . $x || ($x == 6 && $categories_submenu_heading_line_height < 1)){echo ' selected="selected"';} ?>>1.<?php echo $x; ?></option>
                                            <?php } ?>

                                        </select>

                                        <select name="categories_submenu_heading_transform" style="width:190px">

                                            <option value="none" <?php if($categories_submenu_heading_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>
                                            <option value="uppercase" <?php if($categories_submenu_heading_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>

                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Categories box heading:</p>
                                        <select name="categories_box_heading">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($categories_box_heading == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="categories_box_heading_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_box_heading_weight==$x || ($x == 6 && $categories_box_heading_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <select name="categories_box_heading_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_box_heading_px==$x || ($x == 14 && $categories_box_heading_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>
                                        <select name="categories_box_heading_line_height" style="width:90px">

                                            <?php for( $x = 0; $x <= 9; $x++ ) { ?>
                                              <option value="1.<?php echo $x; ?>" <?php if($categories_box_heading_line_height == '1.' . $x || ($x == 6 && $categories_box_heading_line_height < 1)){echo ' selected="selected"';} ?>>1.<?php echo $x; ?></option>
                                            <?php } ?>

                                        </select>

                                        <select name="categories_box_heading_transform" style="width:190px">

                                            <option value="none" <?php if($categories_box_heading_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>
                                            <option value="uppercase" <?php if($categories_box_heading_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>

                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Categories box links:</p>
                                        <select name="categories_box_links">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($categories_box_links == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="categories_box_links_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_box_links_weight==$x || ($x == 6 && $categories_box_links_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <select name="categories_box_links_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($categories_box_links_px==$x || ($x == 14 && $categories_box_links_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>

                                        <select name="categories_box_links_line_height" style="width:90px">

                                            <?php for( $x = 0; $x <= 9; $x++ ) { ?>
                                             <option value="1.<?php echo $x; ?>" <?php if($categories_box_links_line_height == '1.' . $x || ($x == 6 && $categories_box_links_line_height < 1)){echo ' selected="selected"';} ?>>1.<?php echo $x; ?></option>
                                            <?php } ?>

                                        </select>

                                        <select name="categories_box_links_transform" style="width:190px">

                                            <option value="none" <?php if($categories_box_links_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>
                                            <option value="uppercase" <?php if($categories_box_links_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>

                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Price:</p>
                                        <select name="custom_price">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($custom_price == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="custom_price_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($custom_price_weight==$x || ($x == 6 && $custom_price_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <p style="width:40px">Big</p>
                                        <select name="custom_price_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 100; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($custom_price_px==$x || ($x == 50 && $custom_price_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>
                                        <div class="clear" style="height: 10px"></div>
                                        <p style="width:75px;float:left;margin-left: 368px">Medium</p>
                                        <select name="custom_price_px_medium" style="width:90px;margin-right:0px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($custom_price_px_medium==$x || ($x == 20 && $custom_price_px_medium < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>

                                        <div class="clear" style="height: 10px"></div>

                                        <div style="float:left;width: 382px;height:10px"></div>

                                        <p style="width:60px">Small</p>
                                        <select name="custom_price_px_small" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($custom_price_px_small==$x || ($x == 14 && $custom_price_px_small < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>
                                        
                                        <div class="clear" style="height: 10px"></div>
                                        
                                        <p style="width:81px; margin-left: 362px">Old price</p>
                                        <select name="custom_price_px_old_price" style="width:90px;margin-right:0px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($custom_price_px_old_price==$x || ($x == 14 && $custom_price_px_old_price < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>


                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Headlines:</p>
                                        <select name="headlines">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($headlines == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="headlines_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($headlines_weight==$x || ($x == 5 && $headlines_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>

                                        <select name="headlines_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($headlines_px==$x || ($x == 20 && $headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>

                                        <select name="headlines_transform" style="width:190px">

                                            <option value="none" <?php if($headlines_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>
                                            <option value="uppercase" <?php if($headlines_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>

                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Footer headlines:</p>
                                        <select name="footer_headlines">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($footer_headlines == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="footer_headlines_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($footer_headlines_weight==$x || ($x == 5 && $footer_headlines_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <select name="footer_headlines_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($footer_headlines_px==$x || ($x == 20 && $footer_headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>

                                        <select name="footer_headlines_transform" style="width:190px">

                                            <option value="none" <?php if($footer_headlines_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>
                                            <option value="uppercase" <?php if($footer_headlines_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>

                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Page name:</p>
                                        <select name="page_name">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($page_name == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                        </select>
                                        <select name="page_name_weight" style="width:90px;margin-right:15px">

                                            <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($page_name_weight==$x || ($x == 5 && $page_name_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                            <?php } ?>

                                        </select>
                                        <select name="page_name_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 120; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($page_name_px==$x || ($x == 30 && $page_name_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>

                                        <select name="page_name_transform" style="width:190px">

                                            <option value="none" <?php if($page_name_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>
                                            <option value="uppercase" <?php if($page_name_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>

                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Button:</p>
                                        <select name="button_font">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($button_font == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                    </select>
                                    <select name="button_font_weight" style="width:90px;margin-right:15px">

                                        <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                      <option value="<?php echo $x; ?>" <?php if($button_font_weight==$x || ($x == 6 && $button_font_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                        <?php } ?>

                                    </select>
                                        <select name="button_font_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($button_font_px==$x || ($x == 11 && $button_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>

                                        <select name="button_font_line_height" style="width:90px">

                                            <?php for( $x = 0; $x <= 9; $x++ ) { ?>
                                             <option value="1.<?php echo $x; ?>" <?php if($button_font_line_height == '1.' . $x || ($x == 6 && $button_font_line_height < 1)){echo ' selected="selected"';} ?>>1.<?php echo $x; ?></option>
                                            <?php } ?>

                                        </select>

                                                <select name="button_font_text_transform" style="width:190px">

                                                    <option value="uppercase" <?php if($button_font_text_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>
                                                    <option value="none" <?php if($button_font_text_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>

                                                </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Sale, new label:</p>
                                        <select name="sale_new_font">

                                        <?php foreach (get_fonts() as $key => $font) { 


                                            if ($sale_new_font == $font) {
                                                $selected = "selected";
                                            } else {
                                              $selected = "";
                                            }

                                            echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';

                                        } ?>

                                    </select>
                                    <select name="sale_new_font_weight" style="width:90px;margin-right:15px">

                                        <?php for( $x = 3; $x <= 8; $x++ ) { ?>
                                      <option value="<?php echo $x; ?>" <?php if($sale_new_font_weight==$x || ($x == 6 && $sale_new_font_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
                                        <?php } ?>

                                    </select>
                                        <select name="sale_new_font_px" style="width:90px">

                                            <?php for( $x = 9; $x <= 50; $x++ ) { ?>
                                          <option value="<?php echo $x; ?>" <?php if($sale_new_font_px==$x || ($x == 11 && $sale_new_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
                                            <?php } ?>

                                        </select>

                                        <select name="sale_new_line_height" style="width:90px">

                                            <?php for( $x = 0; $x <= 9; $x++ ) { ?>
                                             <option value="1.<?php echo $x; ?>" <?php if($sale_new_line_height == '1.' . $x || ($x == 6 && $sale_new_line_height < 1)){echo ' selected="selected"';} ?>>1.<?php echo $x; ?></option>
                                            <?php } ?>

                                        </select>

                                            <select name="sale_new_font_text_transform" style="width:190px">

                                                <option value="uppercase" <?php if($sale_new_font_text_transform== 'uppercase'){echo ' selected="selected"';} ?>>text-transform: uppercase;</option>
                                                <option value="none" <?php if($sale_new_font_text_transform== 'none'){echo ' selected="selected"';} ?>>text-transform: none;</option>

                                            </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                </div>
                            </div>
                        </div>
                        <!-- End Font -->

						<!-- Colors -->
						
						<div id="tab_colors" class="tab-content">
										
                            <div class="section">
                                <!-- Status -->
                                <?php if($colors_status == 1) { echo '<div class="status status-on" title="1" rel="colors_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="colors_status"></div>'; } ?>
                                <input name="colors_status" value="<?php echo $colors_status; ?>" id="colors_status" type="hidden" />
                            </div>
                            

                            <div class="section">
                                <!-- Input -->

                                <div class="input" style="border: none;padding-bottom: 0px;">
                                    <p style="width: 430px">Cart icon:</p>

                                    <div class="own_image cart_icon">
                                        <input type="hidden" name="cart_icon" value="<?php echo $cart_icon; ?>" id="input-cart-icon" />

                                        <?php if($cart_icon == '') { ?>
                                            <a href="" id="thumb-cart-icon" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                        <?php } else { ?>
                                            <a href="" id="thumb-cart-icon" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $cart_icon; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                        <?php } ?>
                                    </div>

                                    <div class="clear"></div>	
                                </div>

                                <!-- End Input -->


                                <!-- Input -->

                                <div class="input" style="margin-bottom: 10px;border: none;">
                                    <p style="width: 430px">Cart icon hover:</p>

                                    <div class="own_image cart_icon">
                                        <input type="hidden" name="cart_icon_hover" value="<?php echo $cart_icon_hover; ?>" id="input-cart-icon-hover" />

                                        <?php if($cart_icon_hover == '') { ?>
                                            <a href="" id="thumb-cart-icon-hover" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                        <?php } else { ?>
                                            <a href="" id="thumb-cart-icon-hover" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $cart_icon_hover; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                        <?php } ?>
                                    </div>

                                    <div class="clear"></div>	
                                </div>
                            </div>
							
							<!-- End Input -->
							
							<?php $i = 0; foreach($colors_data as $colors) {
								echo '<div class="colors_left" ';
								echo $i == 0 ? 'style="padding-top: 0px"' : '';
								echo '>';
                                echo '<div class="section accordion">';
                                echo '<div class="section-title">';
								echo '	<h4>' . $colors['name'] . '</h4>';
								echo '	<div class="expander"></div>';
								echo '</div>';
                                echo '<div class="section-content">';
									foreach($colors['content'] as $color) {
										echo '<div class="color_input">';
										echo '	<p>' . $color['name'] . ':</p>';
										echo '	<div><input type="text" value="' . ${$color['id']} . '" id="' . $color['id'] . '" name="' . $color['id'] . '"/>';
                                        echo '<span class="color_selected" '. (${$color['id']} != '' ? 'style="background: ' . ${$color['id']} . '"' : '') .'"></span></div>';
										echo '</div>';
									}
                                echo '</div>';
                                echo '</div>';
								echo '</div>';
							$i++; } ?>
							
						</div>
						
						<!-- End Colors -->
						
						<!-- Backgrounds -->
						<div id="tab_backgrounds" class="tab-content">
										
                            <div class="section">
                                <!-- Status -->
                                <?php if($background_status == 1) { echo '<div class="status status-on" title="1" rel="background_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="background_status"></div>'; } ?>

                                <input name="background_status" value="<?php echo $background_status; ?>" id="background_status" type="hidden" />
                            </div>
                            <div class="section">
                                <div class="section-title">
                                    <h4>Body</h4>
                                </div>
                                <div class="section-content">
                                    
                                    <div id="tabs_background_layers" class="htabs tabs-design-bg-layer">

                                        <a href="#tab_bg_layer_1" id="tbg_layer_1"><span>Layer 1</span></a>
                                        <a href="#tab_bg_layer_2" id="tbg_layer_2"><span>Layer 2</span></a>
                                        <a href="#tab_bg_layer_3" id="tbg_layer_3"><span>Layer 3</span></a>

                                    </div>

                                    <!-- ....... TABS BG LAYERS -->

                                    <div id="tab_bg_layer_1" class="tab-content" style="padding-left: 0">

                                        <!-- Input -->

                                        <div class="input">

                                            <p>Background:</p>
                                            <select name="body_background_background">
                                                <option value="0"<?php if($body_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                                <option value="1"<?php if($body_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                                <option value="2"<?php if($body_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                                <option value="3"<?php if($body_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                        <!-- Input -->

                                        <div class="input">
                                            <p>Own background:</p>

                                            <div class="own_image">
                                                <input type="hidden" name="body_background" value="<?php echo $body_background; ?>" id="input-body-background" />

                                                <?php if($body_background == '') { ?>
                                                    <a href="" id="thumb-body-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                                <?php } else { ?>
                                                    <a href="" id="thumb-body-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $body_background; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                                <?php } ?>
                                            </div>

                                            <div class="clear"></div>	
                                        </div>

                                        <!-- End Input -->

                                        <div class="input">

                                            <p>Subtle patterns:</p>
                                            <div class="subtle-patterns" <?php if($body_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $body_background_subtle_patterns; ?>)"<?php } ?>>
                                                <?php

                                                    if($body_background_subtle_patterns != '') { ?>

                                                    <div class="subtle-pattern selected">
                                                        <input type="radio" name="body_background_subtle_patterns" value="<?php echo $body_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $body_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $body_background_subtle_patterns; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                                    <?php 

                                                    }

                                                    $dir = opendir ("../image/subtle_patterns/");
                                                    while (false !== ($file = readdir($dir))) { 
                                                        if ($file<>"." && $file<>"..") {
                                                            if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                        <div class="subtle-pattern">
                                                            <input type="radio" name="body_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                            <span class="bg-selected"></span>
                                                            <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                            <p><?php echo $file; ?></p>
                                                            <div class="clear"></div>
                                                        </div>

                                                <?php
                                                            }

                                                        }
                                                    } 

                                                ?>
                                            </div>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Position:</p>
                                            <select name="body_background_position">
                                                <option value="top left"<?php if($body_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                                <option value="top center"<?php if($body_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                                <option value="top right"<?php if($body_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                                <option value="bottom left"<?php if($body_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                                <option value="bottom center"<?php if($body_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                                <option value="bottom right"<?php if($body_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Repeat:</p>
                                            <select name="body_background_repeat">
                                                <option value="no-repeat"<?php if($body_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                                <option value="repeat-x"<?php if($body_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                                <option value="repeat-y"<?php if($body_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                                <option value="repeat"<?php if($body_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Attachment:</p>
                                            <select name="body_background_attachment">
                                                <option value="scroll"<?php if($body_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                                <option value="fixed"<?php if($body_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                    </div>
                                    <div id="tab_bg_layer_2" class="tab-content"  style="padding-left: 0">

                                        <!-- Input -->

                                        <div class="input">

                                            <p>Background:</p>
                                            <select name="body2_background_background">
                                                <option value="0"<?php if($body2_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                                <option value="1"<?php if($body2_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                                <option value="2"<?php if($body2_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                                <option value="3"<?php if($body2_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                        <!-- Input -->

                                        <div class="input">
                                            <p>Own background:</p>

                                            <div class="own_image">
                                                <input type="hidden" name="body2_background" value="<?php echo $body2_background; ?>" id="input-body2-background" />

                                                <?php if($body2_background == '') { ?>
                                                    <a href="" id="thumb-body2-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                                <?php } else { ?>
                                                    <a href="" id="thumb-body2-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $body2_background; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                                <?php } ?>
                                            </div>

                                            <div class="clear"></div>	
                                        </div>

                                        <!-- End Input -->

                                        <div class="input">

                                            <p>Subtle patterns:</p>
                                            <div class="subtle-patterns" <?php if($body2_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $body2_background_subtle_patterns; ?>)"<?php } ?>>
                                                <?php

                                                    if($body2_background_subtle_patterns != '') { ?>

                                                    <div class="subtle-pattern selected">
                                                        <input type="radio" name="body2_background_subtle_patterns" value="<?php echo $body2_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $body2_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $body2_background_subtle_patterns; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                                    <?php 

                                                    }

                                                    $dir = opendir ("../image/subtle_patterns/");
                                                    while (false !== ($file = readdir($dir))) { 
                                                        if ($file<>"." && $file<>"..") {
                                                            if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                        <div class="subtle-pattern">
                                                            <input type="radio" name="body2_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                            <span class="bg-selected"></span>
                                                            <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                            <p><?php echo $file; ?></p>
                                                            <div class="clear"></div>
                                                        </div>

                                                <?php
                                                            }

                                                        }
                                                    } 

                                                ?>
                                            </div>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Position:</p>
                                            <select name="body2_background_position">
                                                <option value="top left"<?php if($body2_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                                <option value="top center"<?php if($body2_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                                <option value="top right"<?php if($body2_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                                <option value="bottom left"<?php if($body2_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                                <option value="bottom center"<?php if($body2_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                                <option value="bottom right"<?php if($body2_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Repeat:</p>
                                            <select name="body2_background_repeat">
                                                <option value="no-repeat"<?php if($body2_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                                <option value="repeat-x"<?php if($body2_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                                <option value="repeat-y"<?php if($body2_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                                <option value="repeat"<?php if($body2_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Attachment:</p>
                                            <select name="body2_background_attachment">
                                                <option value="scroll"<?php if($body2_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                                <option value="fixed"<?php if($body2_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                    </div>
                                    <div id="tab_bg_layer_3" class="tab-content"  style="padding-left: 0">

                                        <!-- Input -->

                                        <div class="input">

                                            <p>Background:</p>
                                            <select name="body3_background_background">
                                                <option value="0"<?php if($body3_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                                <option value="1"<?php if($body3_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                                <option value="2"<?php if($body3_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                                <option value="3"<?php if($body3_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                        <!-- Input -->

                                        <div class="input">
                                            <p>Own background:</p>

                                            <div class="own_image">
                                                <input type="hidden" name="body3_background" value="<?php echo $body3_background; ?>" id="input-body3-background" />

                                                <?php if($body3_background == '') { ?>
                                                    <a href="" id="thumb-body3-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                                <?php } else { ?>
                                                    <a href="" id="thumb-body3-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $body3_background; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                                <?php } ?>
                                            </div>

                                            <div class="clear"></div>	
                                        </div>

                                        <!-- End Input -->

                                        <div class="input">

                                            <p>Subtle patterns:</p>
                                            <div class="subtle-patterns" <?php if($body3_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $body3_background_subtle_patterns; ?>)"<?php } ?>>
                                                <?php

                                                    if($body3_background_subtle_patterns != '') { ?>

                                                    <div class="subtle-pattern selected">
                                                        <input type="radio" name="body3_background_subtle_patterns" value="<?php echo $body3_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $body3_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $body3_background_subtle_patterns; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                                    <?php 

                                                    }

                                                    $dir = opendir ("../image/subtle_patterns/");
                                                    while (false !== ($file = readdir($dir))) { 
                                                        if ($file<>"." && $file<>"..") {
                                                            if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                        <div class="subtle-pattern">
                                                            <input type="radio" name="body3_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                            <span class="bg-selected"></span>
                                                            <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                            <p><?php echo $file; ?></p>
                                                            <div class="clear"></div>
                                                        </div>

                                                <?php
                                                            }

                                                        }
                                                    } 

                                                ?>
                                            </div>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Position:</p>
                                            <select name="body3_background_position">
                                                <option value="top left"<?php if($body3_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                                <option value="top center"<?php if($body3_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                                <option value="top right"<?php if($body3_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                                <option value="bottom left"<?php if($body3_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                                <option value="bottom center"<?php if($body3_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                                <option value="bottom right"<?php if($body3_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Repeat:</p>
                                            <select name="body3_background_repeat">
                                                <option value="no-repeat"<?php if($body3_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                                <option value="repeat-x"<?php if($body3_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                                <option value="repeat-y"<?php if($body3_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                                <option value="repeat"<?php if($body3_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->

                                            <!-- Input -->	

                                        <div class="input">

                                            <p>Attachment:</p>
                                            <select name="body3_background_attachment">
                                                <option value="scroll"<?php if($body3_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                                <option value="fixed"<?php if($body3_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                            </select>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                    </div>

                                </div>
                            </div>
                            
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Top bar</h4>
                                    <div class="expander"></div>
                                </div>
                                
                                <div class="section-content">
							
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="top_bar_background_background">
                                            <option value="0"<?php if($top_bar_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($top_bar_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($top_bar_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                            <option value="3"<?php if($top_bar_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="top_bar_background" value="<?php echo $top_bar_background; ?>" id="input-top_bar-background" />

                                            <?php if($top_bar_background == '') { ?>
                                                <a href="" id="thumb-top_bar-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-top_bar-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $top_bar_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->

                                    <div class="input">

                                        <p>Subtle patterns:</p>
                                        <div class="subtle-patterns" <?php if($top_bar_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $top_bar_background_subtle_patterns; ?>)"<?php } ?>>
                                            <?php

                                                if($top_bar_background_subtle_patterns != '') { ?>

                                                <div class="subtle-pattern selected">
                                                    <input type="radio" name="top_bar_background_subtle_patterns" value="<?php echo $top_bar_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                    <span class="bg-selected"></span>
                                                    <img src="../image/subtle_patterns/<?php echo $top_bar_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                    <p><?php echo $top_bar_background_subtle_patterns; ?></p>
                                                    <div class="clear"></div>
                                                </div>

                                                <?php 

                                                }

                                                $dir = opendir ("../image/subtle_patterns/");
                                                while (false !== ($file = readdir($dir))) { 
                                                    if ($file<>"." && $file<>"..") {
                                                        if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                    <div class="subtle-pattern ">
                                                        <input type="radio" name="top_bar_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $file; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                            <?php
                                                        }

                                                    }
                                                } 

                                            ?>
                                        </div>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="top_bar_background_position">
                                            <option value="top left"<?php if($top_bar_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                            <option value="top center"<?php if($top_bar_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                            <option value="top right"<?php if($top_bar_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                            <option value="bottom left"<?php if($top_bar_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                            <option value="bottom center"<?php if($top_bar_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                            <option value="bottom right"<?php if($top_bar_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Repeat:</p>
                                        <select name="top_bar_background_repeat">
                                            <option value="no-repeat"<?php if($top_bar_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                            <option value="repeat-x"<?php if($top_bar_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                            <option value="repeat-y"<?php if($top_bar_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                            <option value="repeat"<?php if($top_bar_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Attachment:</p>
                                        <select name="top_bar_background_attachment">
                                            <option value="scroll"<?php if($top_bar_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                            <option value="fixed"<?php if($top_bar_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Header</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="header_background_background">
                                            <option value="0"<?php if($header_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($header_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($header_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                            <option value="3"<?php if($header_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="header_background" value="<?php echo $header_background; ?>" id="input-header-background" />

                                            <?php if($header_background == '') { ?>
                                                <a href="" id="thumb-header-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-header-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $header_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->

                                    <div class="input">

                                        <p>Subtle patterns:</p>
                                        <div class="subtle-patterns" <?php if($header_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $header_background_subtle_patterns; ?>)"<?php } ?>>
                                            <?php

                                                if($header_background_subtle_patterns != '') { ?>

                                                <div class="subtle-pattern selected">
                                                    <input type="radio" name="header_background_subtle_patterns" value="<?php echo $header_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                    <span class="bg-selected"></span>
                                                    <img src="../image/subtle_patterns/<?php echo $header_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                    <p><?php echo $header_background_subtle_patterns; ?></p>
                                                    <div class="clear"></div>
                                                </div>

                                                <?php 

                                                }

                                                $dir = opendir ("../image/subtle_patterns/");
                                                while (false !== ($file = readdir($dir))) { 
                                                    if ($file<>"." && $file<>"..") {
                                                        if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                    <div class="subtle-pattern">
                                                        <input type="radio" name="header_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $file; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                            <?php
                                                        }

                                                    }
                                                } 

                                            ?>
                                        </div>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="header_background_position">
                                            <option value="top left"<?php if($header_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                            <option value="top center"<?php if($header_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                            <option value="top right"<?php if($header_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                            <option value="bottom left"<?php if($header_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                            <option value="bottom center"<?php if($header_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                            <option value="bottom right"<?php if($header_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Repeat:</p>
                                        <select name="header_background_repeat">
                                            <option value="no-repeat"<?php if($header_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                            <option value="repeat-x"<?php if($header_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                            <option value="repeat-y"<?php if($header_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                            <option value="repeat"<?php if($header_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Attachment:</p>
                                        <select name="header_background_attachment">
                                            <option value="scroll"<?php if($header_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                            <option value="fixed"<?php if($header_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Top</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="top_background_background">
                                            <option value="0"<?php if($top_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($top_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($top_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                            <option value="3"<?php if($top_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="top_background" value="<?php echo $top_background; ?>" id="input-top-background" />

                                            <?php if($top_background == '') { ?>
                                                <a href="" id="thumb-top-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-top-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $top_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->

                                    <div class="input">

                                        <p>Subtle patterns:</p>
                                        <div class="subtle-patterns" <?php if($top_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $top_background_subtle_patterns; ?>)"<?php } ?>>
                                            <?php

                                                if($top_background_subtle_patterns != '') { ?>

                                                <div class="subtle-pattern selected">
                                                    <input type="radio" name="top_background_subtle_patterns" value="<?php echo $top_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                    <span class="bg-selected"></span>
                                                    <img src="../image/subtle_patterns/<?php echo $top_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                    <p><?php echo $top_background_subtle_patterns; ?></p>
                                                    <div class="clear"></div>
                                                </div>

                                                <?php 

                                                }

                                                $dir = opendir ("../image/subtle_patterns/");
                                                while (false !== ($file = readdir($dir))) { 
                                                    if ($file<>"." && $file<>"..") {
                                                        if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                    <div class="subtle-pattern">
                                                        <input type="radio" name="top_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $file; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                            <?php
                                                        }

                                                    }
                                                } 

                                            ?>
                                        </div>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="top_background_position">
                                            <option value="top left"<?php if($top_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                            <option value="top center"<?php if($top_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                            <option value="top right"<?php if($top_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                            <option value="bottom left"<?php if($top_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                            <option value="bottom center"<?php if($top_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                            <option value="bottom right"<?php if($top_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Repeat:</p>
                                        <select name="top_background_repeat">
                                            <option value="no-repeat"<?php if($top_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                            <option value="repeat-x"<?php if($top_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                            <option value="repeat-y"<?php if($top_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                            <option value="repeat"<?php if($top_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Attachment:</p>
                                        <select name="top_background_attachment">
                                            <option value="scroll"<?php if($top_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                            <option value="fixed"<?php if($top_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
														
							<div class="section accordion">
                                <div class="section-title">
                                    <h4>Menu</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="menu_background_background">
                                            <option value="0"<?php if($menu_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($menu_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($menu_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                            <option value="3"<?php if($menu_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="menu_background" value="<?php echo $menu_background; ?>" id="input-menu-background" />

                                            <?php if($menu_background == '') { ?>
                                                <a href="" id="thumb-menu-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-menu-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $menu_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->

                                    <div class="input">

                                        <p>Subtle patterns:</p>
                                        <div class="subtle-patterns" <?php if($menu_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $menu_background_subtle_patterns; ?>)"<?php } ?>>
                                            <?php

                                                if($menu_background_subtle_patterns != '') { ?>

                                                <div class="subtle-pattern selected">
                                                    <input type="radio" name="menu_background_subtle_patterns" value="<?php echo $menu_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                    <span class="bg-selected"></span>
                                                    <img src="../image/subtle_patterns/<?php echo $menu_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                    <p><?php echo $menu_background_subtle_patterns; ?></p>
                                                    <div class="clear"></div>
                                                </div>

                                                <?php 

                                                }

                                                $dir = opendir ("../image/subtle_patterns/");
                                                while (false !== ($file = readdir($dir))) { 
                                                    if ($file<>"." && $file<>"..") {
                                                        if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                    <div class="subtle-pattern">
                                                        <input type="radio" name="menu_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $file; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                            <?php
                                                        }

                                                    }
                                                } 

                                            ?>
                                        </div>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="menu_background_position">
                                            <option value="top left"<?php if($menu_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                            <option value="top center"<?php if($menu_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                            <option value="top right"<?php if($menu_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                            <option value="bottom left"<?php if($menu_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                            <option value="bottom center"<?php if($menu_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                            <option value="bottom right"<?php if($menu_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Repeat:</p>
                                        <select name="menu_background_repeat">
                                            <option value="no-repeat"<?php if($menu_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                            <option value="repeat-x"<?php if($menu_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                            <option value="repeat-y"<?php if($menu_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                            <option value="repeat"<?php if($menu_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Attachment:</p>
                                        <select name="menu_background_attachment">
                                            <option value="scroll"<?php if($menu_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                            <option value="fixed"<?php if($menu_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>

                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Slider</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content"

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="slider_background_background">
                                            <option value="0"<?php if($slider_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($slider_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($slider_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                            <option value="3"<?php if($slider_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="slider_background" value="<?php echo $slider_background; ?>" id="input-slider-background" />

                                            <?php if($slider_background == '') { ?>
                                                <a href="" id="thumb-slider-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-slider-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $slider_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->

                                    <div class="input">

                                        <p>Subtle patterns:</p>
                                        <div class="subtle-patterns" <?php if($slider_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $slider_background_subtle_patterns; ?>)"<?php } ?>>
                                            <?php

                                                if($slider_background_subtle_patterns != '') { ?>

                                                <div class="subtle-pattern selected">
                                                    <input type="radio" name="slider_background_subtle_patterns" value="<?php echo $slider_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                    <span class="bg-selected"></span>
                                                    <img src="../image/subtle_patterns/<?php echo $slider_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                    <p><?php echo $slider_background_subtle_patterns; ?></p>
                                                    <div class="clear"></div>
                                                </div>

                                                <?php 

                                                }

                                                $dir = opendir ("../image/subtle_patterns/");
                                                while (false !== ($file = readdir($dir))) { 
                                                    if ($file<>"." && $file<>"..") {
                                                        if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                    <div class="subtle-pattern">
                                                        <input type="radio" name="slider_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $file; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                            <?php
                                                        }

                                                    }
                                                } 

                                            ?>
                                        </div>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="slider_background_position">
                                            <option value="top left"<?php if($slider_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                            <option value="top center"<?php if($slider_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                            <option value="top right"<?php if($slider_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                            <option value="bottom left"<?php if($slider_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                            <option value="bottom center"<?php if($slider_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                            <option value="bottom right"<?php if($slider_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Repeat:</p>
                                        <select name="slider_background_repeat">
                                            <option value="no-repeat"<?php if($slider_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                            <option value="repeat-x"<?php if($slider_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                            <option value="repeat-y"<?php if($slider_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                            <option value="repeat"<?php if($slider_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Attachment:</p>
                                        <select name="slider_background_attachment">
                                            <option value="scroll"<?php if($slider_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                            <option value="fixed"<?php if($slider_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
							
							<div class="section accordion">
                                <div class="section-title">
                                    <h4>Footer</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="footer_background_background">
                                            <option value="0"<?php if($footer_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($footer_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($footer_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                            <option value="3"<?php if($footer_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="footer_background" value="<?php echo $footer_background; ?>" id="input-customfooter-background" />

                                            <?php if($footer_background == '') { ?>
                                                <a href="" id="thumb-customfooter-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-customfooter-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $footer_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->

                                    <div class="input">

                                        <p>Subtle patterns:</p>
                                        <div class="subtle-patterns" <?php if($footer_background_subtle_patterns != '') { ?> style="background-image: url(../image/subtle_patterns/<?php echo $footer_background_subtle_patterns; ?>)"<?php } ?>>
                                            <?php

                                                if($footer_background_subtle_patterns != '') { ?>

                                                <div class="subtle-pattern selected">
                                                    <input type="radio" name="footer_background_subtle_patterns" value="<?php echo $footer_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
                                                    <span class="bg-selected"></span>
                                                    <img src="../image/subtle_patterns/<?php echo $footer_background_subtle_patterns; ?>" width="50px" height="50px"> 
                                                    <p><?php echo $footer_background_subtle_patterns; ?></p>
                                                    <div class="clear"></div>
                                                </div>

                                                <?php 

                                                }

                                                $dir = opendir ("../image/subtle_patterns/");
                                                while (false !== ($file = readdir($dir))) { 
                                                    if ($file<>"." && $file<>"..") {
                                                        if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>

                                                    <div class="subtle-pattern">
                                                        <input type="radio" name="footer_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
                                                        <span class="bg-selected"></span>
                                                        <img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
                                                        <p><?php echo $file; ?></p>
                                                        <div class="clear"></div>
                                                    </div>

                                            <?php
                                                        }

                                                    }
                                                } 

                                            ?>
                                        </div>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="footer_background_position">
                                            <option value="top left"<?php if($footer_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
                                            <option value="top center"<?php if($footer_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
                                            <option value="top right"<?php if($footer_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
                                            <option value="bottom left"<?php if($footer_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
                                            <option value="bottom center"<?php if($footer_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
                                            <option value="bottom right"<?php if($footer_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Repeat:</p>
                                        <select name="footer_background_repeat">
                                            <option value="no-repeat"<?php if($footer_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
                                            <option value="repeat-x"<?php if($footer_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
                                            <option value="repeat-y"<?php if($footer_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
                                            <option value="repeat"<?php if($footer_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                        <!-- Input -->	

                                    <div class="input">

                                        <p>Attachment:</p>
                                        <select name="footer_background_attachment">
                                            <option value="scroll"<?php if($footer_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
                                            <option value="fixed"<?php if($footer_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Categories <br> heading</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="categories_heading_background_background">
                                            <option value="0"<?php if($categories_heading_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($categories_heading_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($categories_heading_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="categories_heading_background" value="<?php echo $categories_heading_background; ?>" id="input-categories_heading-background" />

                                            <?php if($categories_heading_background == '') { ?>
                                                <a href="" id="thumb-categories_heading-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-categories_heading-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $categories_heading_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Mobile Menu<br> -> Heading</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="mobile_menu_navigation_background_background">
                                            <option value="0"<?php if($mobile_menu_navigation_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($mobile_menu_navigation_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($mobile_menu_navigation_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="mobile_menu_navigation_background" value="<?php echo $mobile_menu_navigation_background; ?>" id="input-mobile_menu-background" />

                                            <?php if($mobile_menu_navigation_background == '') { ?>
                                                <a href="" id="thumb-mobile_menu-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-mobile_menu-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $mobile_menu_navigation_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
							
							<div class="section accordion">
                                <div class="section-title">
                                    <h4>New label</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="new_label_background_background">
                                            <option value="0"<?php if($new_label_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($new_label_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($new_label_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="new_label_background" value="<?php echo $new_label_background; ?>" id="input-new_label-background" />

                                            <?php if($new_label_background == '') { ?>
                                                <a href="" id="thumb-new_label-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-new_label-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $new_label_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Sale<br>label</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="sale_label_background_background">
                                            <option value="0"<?php if($sale_label_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($sale_label_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($sale_label_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="sale_label_background" value="<?php echo $sale_label_background; ?>" id="input-sale_label-background" />

                                            <?php if($sale_label_background == '') { ?>
                                                <a href="" id="thumb-sale_label-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-sale_label-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $sale_label_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->
                                </div>
                            </div>
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Button</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="button_background_background">
                                            <option value="0"<?php if($button_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($button_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($button_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="button_background" value="<?php echo $button_background; ?>" id="input-button-background" />

                                            <?php if($button_background == '') { ?>
                                                <a href="" id="thumb-button-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-button-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $button_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->										
                                </div>
                            </div>
                            <div class="section accordion">
                                <div class="section-title">
                                    <h4>Second<br>Button</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content">

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Background:</p>
                                        <select name="second_button_background_background">
                                            <option value="0"<?php if($second_button_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
                                            <option value="1"<?php if($second_button_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
                                            <option value="2"<?php if($second_button_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
                                        </select>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">
                                        <p>Own background:</p>

                                        <div class="own_image">
                                            <input type="hidden" name="second_button_background" value="<?php echo $second_button_background; ?>" id="input-second_button-background" />

                                            <?php if($second_button_background == '') { ?>
                                                <a href="" id="thumb-second_button-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                            <?php } else { ?>
                                                <a href="" id="thumb-second_button-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $second_button_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="clear"></div>	
                                    </div>

                                    <!-- End Input -->	
                                </div>
                            </div>

						</div>
					
					</div>
					
					<!-- End Design -->
					
					<!-- Footer -->
					
					<div id="tab_footer" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
                            <div id="tabs_footer" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_customfooter_<?php echo $language['language_id']; ?>"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
                           
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_customfooter_<?php echo $language_id; ?>">
							
								<!-- Contact, About us, Facebook TABS -->
								
								<div id="tabs_<?php echo $language_id; ?>" class="htabs tabs-design">
								
									<a href="#tab_contact_<?php echo $language_id; ?>" class="tcontact"><span>Contact</span></a>
									<a href="#tab_aboutus_<?php echo $language_id; ?>" class="taboutus"><span>About us</span></a>
									<a href="#tab_facebook_<?php echo $language_id; ?>" class="tfacebook"><span>Facebook</span></a>
									<a href="#tab_twitter_<?php echo $language_id; ?>" class="ttwitter"><span>Twitter</span></a>
									<a href="#tab_customblock_<?php echo $language_id; ?>" class="tcustomblock"><span>Custom</span></a>
								
								</div>
								
								<!-- Contact, About us, Facebook -->
								
								<!-- TAB CONTACT -->
								
								<div id="tab_contact_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['contact_status'])) { ?>
										<?php if($customfooter[$language_id]['contact_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_contact_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; } ?>
									
										<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="<?php echo $customfooter[$language_id]['contact_status']; ?>" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="0" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } ?>
                                    </div>
                                    
                                    
                                    <div class="section">
                                        <div class="section-title">
                                            <h4>Contact</h4>
                                        </div>
                                        <div class="section-content">
									
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Title:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_title'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_title]" type="text" value="<?php echo $customfooter[$language_id]['contact_title']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_title]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Phone:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_phone'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone]" type="text" value="<?php echo $customfooter[$language_id]['contact_phone']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Phone 2:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_phone2'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" type="text" value="<?php echo $customfooter[$language_id]['contact_phone2']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Skype:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_skype'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype]" type="text" value="<?php echo $customfooter[$language_id]['contact_skype']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Skype 2:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_skype2'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" type="text" value="<?php echo $customfooter[$language_id]['contact_skype2']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>E-mail:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_email'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email]" type="text" value="<?php echo $customfooter[$language_id]['contact_email']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>E-mail 2:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_email2'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email2]" type="text" value="<?php echo $customfooter[$language_id]['contact_email2']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email2]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        </div>
                                    </div>

								</div>
								
								<!-- End TAB CONTACT -->
								
								<!-- TAB About us -->
								
								<div id="tab_aboutus_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['aboutus_status'])) { ?>
                                            <?php if($customfooter[$language_id]['aboutus_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="<?php echo $customfooter[$language_id]['aboutus_status']; ?>" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="0" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
                                        <?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>About us</h4>
                                        </div>
                                        <div class="section-content">
									
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['aboutus_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" type="text" value="<?php echo $customfooter[$language_id]['aboutus_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->

                                            <!-- Input -->

                                            <div class="input-with-editor editor-no-border">										

                                                <?php if(isset($customfooter[$language_id]['aboutus_text'])) { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]" id="customfooter_<?php echo $language_id; ?>_aboutus_text"><?php echo $customfooter[$language_id]['aboutus_text']; ?></textarea>
                                                <?php } else { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]" id="customfooter_<?php echo $language_id; ?>_aboutus_text"></textarea>
                                                <?php } ?>

                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#customfooter_<?php echo $language_id; ?>_aboutus_text').summernote({
                                                        height: 250
                                                    });
                                                </script>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB About US -->
								
								<!-- TAB Facebook -->
								
								<div id="tab_facebook_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['facebook_status'])) { ?>
                                            <?php if($customfooter[$language_id]['facebook_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="<?php echo $customfooter[$language_id]['facebook_status']; ?>" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="0" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
                                        <?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Facebook</h4>
                                        </div>
                                        <div class="section-content">
									
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_title]" type="text" value="<?php echo $customfooter[$language_id]['facebook_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->

                                            <!-- Input -->

                                            <div class="input">

                                                <p>Facebook ID:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_id'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_id]" type="text" value="<?php echo $customfooter[$language_id]['facebook_id']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_id]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Show Faces:</p>
                                                <select name="customfooter[<?php echo $language_id; ?>][show_faces]">
                                                    <?php if(isset($customfooter[$language_id]['show_faces'])) { ?>
                                                        <option value="0" <?php if($customfooter[$language_id]['show_faces'] =='0'){echo ' selected="selected"';} ?>>Yes</option>
                                                        <option value="1" <?php if($customfooter[$language_id]['show_faces'] =='1'){echo ' selected="selected"';} ?>>No</option>
                                                    <?php } else { ?>
                                                        <option value="0" selected="selected">Yes</option>
                                                        <option value="1">No</option>						              
                                                    <?php } ?>
                                                </select>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Number of faces:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_faces'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" type="text" value="<?php echo $customfooter[$language_id]['facebook_faces']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Height:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_height'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_height]" type="text" value="<?php echo $customfooter[$language_id]['facebook_height']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_height]" type="text" value="" />
                                                <?php } ?>
                                                <span style="display: block;float: left;width: auto;padding-top:12px">px</span>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Color scheme:</p>
                                                <select name="customfooter[<?php echo $language_id; ?>][color_scheme]">
                                                    <?php if(isset($customfooter[$language_id]['color_scheme'])) { ?>
                                                        <option value="0" <?php if($customfooter[$language_id]['color_scheme'] =='0'){echo ' selected="selected"';} ?>>Light</option>
                                                        <option value="1" <?php if($customfooter[$language_id]['color_scheme'] =='1'){echo ' selected="selected"';} ?>>Dark</option>
                                                    <?php } else { ?>
                                                        <option value="0" selected="selected">Light</option>
                                                        <option value="1">Dark</option>						              
                                                    <?php } ?>
                                                </select>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB Facebook -->
								
								<!-- TAB Twitter -->
								
								<div id="tab_twitter_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['twitter_status'])) { ?>
                                            <?php if($customfooter[$language_id]['twitter_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="<?php echo $customfooter[$language_id]['twitter_status']; ?>" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="0" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
                                        <?php } ?>
                                    </div>

									<div class="section">
                                        <div class="section-title">
                                            <h4>Twiter</h4>
                                        </div>
                                        <div class="section-content">

                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['twitter_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_title]" type="text" value="<?php echo $customfooter[$language_id]['twitter_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Widget id:</p>
                                                <?php if(isset($customfooter[$language_id]['twitter_widget_id'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" type="text" value="<?php echo $customfooter[$language_id]['twitter_widget_id']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB Twitter -->
								
								<!-- TAB Custom block -->
								
								<div id="tab_customblock_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['customblock_status'])) { ?>
                                            <?php if($customfooter[$language_id]['customblock_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_customblock_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_customblock_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][customblock_status]" value="<?php echo $customfooter[$language_id]['customblock_status']; ?>" id="customfooter_<?php echo $language_id; ?>_customblock_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_customblock_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][customblock_status]" value="0" id="customfooter_<?php echo $language_id; ?>_customblock_status" type="hidden" />
                                        <?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Custom block</h4>
                                        </div>
                                        <div class="section-content">

                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['customblock_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][customblock_title]" type="text" value="<?php echo $customfooter[$language_id]['customblock_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][customblock_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->

                                            <!-- Input -->

                                            <div class="input-with-editor editor-no-border">										

                                                <?php if(isset($customfooter[$language_id]['customblock_text'])) { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][customblock_text]" id="customfooter_<?php echo $language_id; ?>_customblock_text"><?php echo $customfooter[$language_id]['customblock_text']; ?></textarea>
                                                <?php } else { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][customblock_text]" id="customfooter_<?php echo $language_id; ?>_customblock_text"></textarea>
                                                <?php } ?>

                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#customfooter_<?php echo $language_id; ?>_customblock_text').summernote({
                                                        height: 250
                                                    });
                                                </script>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB Custom block -->
								
								<script type="text/javascript"><!--
								$('#tabs_<?php echo $language_id; ?> a').tabs();
								if($.cookie('tabs_<?php echo $language_id; ?>') > 0) {
									$('#tabs_<?php echo $language_id; ?> a').eq($.cookie('tabs_<?php echo $language_id; ?>')).trigger("click");
								}
								$('#tabs_<?php echo $language_id; ?> a').click(function() {
									var element_index = $('#tabs_<?php echo $language_id; ?> a').index(this);
									$.cookie('tabs_<?php echo $language_id; ?>', element_index); 
								});
								//--></script> 
							
							</div>
							
							<?php } ?>
						
						</div>
						
						<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
					
					</div>
					
					<!-- End Footer -->
					
					<!-- ''''''''''''''' PAYMENT -->
					
					<div id="tab_payment" class="tab-content">
					
                        <div class="section">
                            <!-- Status -->
                            <?php if($payment_status == 0 && $payment_status != '') { echo '<div class="status status-off" title="0" rel="payment_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_status"></div>'; } ?>
                            <input name="payment_status" value="<?php echo $payment_status; ?>" id="payment_status" type="hidden" />
						</div>
						<table class="payment_images" id="payment">
							<thead>
								<tr>
									<td class="first">Icon</td>
									<td>Name</td>
									<td>Link</td>
									<td>Sort</td>
									<td>New Tab</td>
									<td>Delete</td>
								</tr>
							</thead>
							<?php $module_row = 0; if($payment != '') { ?>
								<?php foreach($payment as $payments) { ?>
								<tbody id="payment<?php echo $module_row; ?>">
									<tr>
										<td class="first">
											<div class="own_image">
												<input type="hidden" name="payment[<?php echo $module_row; ?>][img]" value="<?php echo $payments['img']; ?>" id="input-<?php echo $module_row; ?>_img_preview" />
												
												<?php if($payments['img'] == '') { ?>
													<a href="" id="thumb-<?php echo $module_row; ?>_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
												<?php } else { ?>
													<a href="" id="thumb-<?php echo $module_row; ?>_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $payments['img']; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
												<?php } ?>
											</div>
										</td>
										<td>
											<div class="payment-name">
												<input type="text" value="<?php if(isset($payments['name'])) { echo $payments['name']; } ?>" name="payment[<?php echo $module_row; ?>][name]">
											</div>
										</td>
										<td>
											<input type="text" value="<?php if(isset($payments['link'])) { echo $payments['link']; } ?>" name="payment[<?php echo $module_row; ?>][link]">
										</td>
										<td>
											<input type="text" class="sort" value="<?php if(isset($payments['sort'])) { echo $payments['sort']; } ?>" name="payment[<?php echo $module_row; ?>][sort]">
										</td>
										<td>
											<?php if(isset($payments['new_tab'])) { ?>
												<?php if($payments['new_tab'] == 0 && $payments['new_tab'] != '') { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<?php } else { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<input name="payment[<?php echo $module_row; ?>][new_tab]" value="<?php if(isset($payments['new_tab'])) { echo $payments['new_tab']; } else { echo '0'; } ?>" id="payment_<?php echo $module_row; ?>_new_tab" type="hidden" />
										</td>
										<td>
											<a onclick="$('#payment<?php echo $module_row; ?>').remove();" class="remove-payment">Remove</a>
										</td>
									</tr>
								</tbody>
								<?php $module_row++; } ?>
							<?php } ?>
							<tfoot></tfoot>
						</table>
						
                        <a onclick="addPayment();" class="add-item-payment">Add<br> item</a>
						
						<script type="text/javascript"><!--
						var module_row = <?php echo $module_row; ?>;
						
						function addPayment() {
							html  = '<tbody id="payment' + module_row + '">';
							html += '  <tr>';
							html += '	 <td class="first">';
							html += '		<div class="own_image"><input type="hidden" name="payment[' + module_row + '][img]" value="" id="input-' + module_row + '_img_preview" /><a href="" id="thumb-' + module_row + '_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a></div>';
							html += '	 </td>';
							html += '    <td>';
							html += '		<div class="payment_name"><input type="text" name="payment[' + module_row + '][name]"></div>';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" name="payment[' + module_row + '][link]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" class="sort" name="payment[' + module_row + '][sort]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<div class="status status-off" title="0" rel="payment_' + module_row + '_new_tab"></div><input name="payment[' + module_row + '][new_tab]" value="0" id="payment_' + module_row + '_new_tab" type="hidden" />';
							html += '    </td>';
							html += '    <td><a onclick="$(\'#payment' + module_row + '\').remove();" class="remove-payment">Remove</a></td>';
							html += '  </tr>';
							html += '</tbody>';
							
							$('#payment tfoot').before(html);
							
							module_row++;
						}
						//--></script> 
	
					</div>
					
					<!-- ''''''''''''''''' END PAYMENT -->
					
					<!-- Custom code -->
					
					<div id="tab_custom_code" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_custom_code" class="htabs tabs-design">
						
							<a href="#tab_css" id="tcss"><span>Css</span></a>
							<a href="#tab_javascript" id="tjavascript"><span>Javascript</span></a>
						
						</div>
						
						<!-- ....... TABS CSS -->
						
						<div id="tab_css" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_css_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_css_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_css_status"></div>'; } ?>
							
							<input name="custom_code_css_status" value="<?php echo $custom_code_css_status; ?>" id="custom_code_css_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_css)) { ?>
								<textarea rows="0" cols="0" name="custom_code_css"><?php echo $custom_code_css; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_css"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS CSS -->
						
						<!-- ....... TABS JAVASCRIPT -->
						
						<div id="tab_javascript" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_javascript_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_javascript_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_javascript_status"></div>'; } ?>
							
							<input name="custom_code_javascript_status" value="<?php echo $custom_code_javascript_status; ?>" id="custom_code_javascript_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_js)) { ?>
								<textarea rows="0" cols="0" name="custom_code_js"><?php echo $custom_code_js; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_js"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS JAVASCRIPT -->
										
					</div>
					
					<!-- End Custom code -->
					
					<!-- Widget -->
					
					<div id="tab_widgets" class="tab-content2">
											
						<div id="tabs_widgets" class="htabs tabs-design">
						
							<a href="#tab_widget_facebook" class="tfacebook"><span>Facebook</span></a>
							<a href="#tab_widget_twitter" class="ttwitter"><span>Twitter</span></a>
							<a href="#tab_widget_custom" class="tcustomblock"><span>Custom</span></a>
						
						</div>
												
						<div id="tab_widget_facebook" class="tab-content">
						
                            <div class="section">
							<!-- Status -->
							
							<?php if($widget_facebook_status == 1) { echo '<div class="status status-on" title="1" rel="widget_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_facebook_status"></div>'; } ?>
							
							<input name="widget_facebook_status" value="<?php echo $widget_facebook_status; ?>" id="widget_facebook_status" type="hidden" />
							
							</div>
									
                            <div class="section">
                                <div class="section-title">
                                    <h4>Facebook</h4>
                                </div>
                                <div class="section-content">
							
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Facebook ID:</p>
                                        <?php if(isset($widget_facebook_id)) { ?>
                                            <input name="widget_facebook_id" type="text" value="<?php echo $widget_facebook_id; ?>" />
                                        <?php } else { ?>
                                            <input name="widget_facebook_id" type="text" value="" />
                                        <?php } ?>

                                        <a href="http://findmyfacebookid.com/" target="_blank" style="display: block;float: left;width: auto;margin-top: 7px">Find your Facebook ID »</a>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="widget_facebook_position">
                                            <?php if(isset($widget_facebook_position)) { ?>
                                               <option value="0" <?php if($widget_facebook_position =='0'){echo ' selected="selected"';} ?>>Right</option>
                                               <option value="1" <?php if($widget_facebook_position =='1'){echo ' selected="selected"';} ?>>Left</option>
                                             <?php } else { ?>
                                                <option value="0" selected="selected">Right</option>
                                                <option value="1">Left</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->
                                </div>
                            </div>
						
						</div>
												
						<div id="tab_widget_twitter" class="tab-content">
						
                            <div class="section">
							<!-- Status -->
							
							<?php if($widget_twitter_status == 1) { echo '<div class="status status-on" title="1" rel="widget_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_twitter_status"></div>'; } ?>
							
							<input name="widget_twitter_status" value="<?php echo $widget_twitter_status; ?>" id="widget_twitter_status" type="hidden" />
							
							</div>
									
                            <div class="section">
                                <div class="section-title">
                                    <h4>Twitter</h4>
                                </div>
                                <div class="section-content">
							
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Twitter username:</p>
                                        <?php if(isset($widget_twitter_user_name)) { ?>
                                            <input name="widget_twitter_user_name" type="text" value="<?php echo $widget_twitter_user_name; ?>" />
                                        <?php } else { ?>
                                            <input name="widget_twitter_user_name" type="text" value="" />
                                        <?php } ?>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Widget ID:</p>
                                        <?php if(isset($widget_twitter_id)) { ?>
                                            <input name="widget_twitter_id" type="text" value="<?php echo $widget_twitter_id; ?>" />
                                        <?php } else { ?>
                                            <input name="widget_twitter_id" type="text" value="" />
                                        <?php } ?>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Tweet limit:</p>
                                        <select name="widget_twitter_limit">
                                            <?php if(isset($widget_twitter_limit)) { ?>
                                               <option value="1" <?php if($widget_twitter_limit =='1'){echo ' selected="selected"';} ?>>1</option>
                                               <option value="2" <?php if($widget_twitter_limit =='2'){echo ' selected="selected"';} ?>>2</option>
                                               <option value="3" <?php if($widget_twitter_limit =='3'){echo ' selected="selected"';} ?>>3</option>
                                             <?php } else { ?>
                                                <option value="1">1</option>
                                                <option value="2">2</option>						              
                                                <option value="3" selected="selected">3</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="widget_twitter_position">
                                            <?php if(isset($widget_twitter_position)) { ?>
                                               <option value="0" <?php if($widget_twitter_position =='0'){echo ' selected="selected"';} ?>>Right</option>
                                               <option value="1" <?php if($widget_twitter_position =='1'){echo ' selected="selected"';} ?>>Left</option>
                                             <?php } else { ?>
                                                <option value="0" selected="selected">Right</option>
                                                <option value="1">Left</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->
                                </div>
                            </div>
						
						</div>
						
						<div id="tab_widget_custom" class="tab-content">
						
                            <div class="section">
                                <!-- Status -->

                                <?php if($widget_custom_status == 1) { echo '<div class="status status-on" title="1" rel="widget_custom_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_custom_status"></div>'; } ?>

                                <input name="widget_custom_status" value="<?php echo $widget_custom_status; ?>" id="widget_custom_status" type="hidden" />

							</div>
									
                            <div class="section">
                                <div class="section-title">
                                    <h4>Custom block</h4>
                                </div>
                                <div class="section-content">
							
                                    <div class="customblocktabs htabs">
                                        <?php foreach ($languages as $language) { ?>
                                        <a href="#content_customblock_<?php echo $language['language_id']; ?>"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                                        <?php } ?>
                                    </div>

                                    <?php foreach ($languages as $language) { $lang_id = $language['language_id']; ?>
                                    <!-- Input -->
                                    <div id="content_customblock_<?php echo $language['language_id']; ?>" class="content_customblock">
                                        <div class="input-with-editor clearfix">
                                            <textarea name="widget_custom_content[<?php echo $language['language_id']; ?>]" id="widget_custom_content_<?php echo $language['language_id']; ?>" style="float: none;clear: both"><?php if(isset($widget_custom_content[$lang_id])) { echo $widget_custom_content[$lang_id]; } ?></textarea>
                                        </div>
                                    </div>
                                    <?php } ?>

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="widget_custom_position">
                                            <?php if(isset($widget_custom_position)) { ?>
                                               <option value="0" <?php if($widget_custom_position =='0'){echo ' selected="selected"';} ?>>Right</option>
                                               <option value="1" <?php if($widget_custom_position =='1'){echo ' selected="selected"';} ?>>Left</option>
                                             <?php } else { ?>
                                                    <option value="0" selected="selected">Right</option>
                                                <option value="1">Left</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->
                                </div>
                            </div>
							
						</div>
																
					</div>
					
					<!-- End Widgets -->
					
					<!-- Compressor Code -->
					
					<div id="tab_compressor_code" class="tab-content">
					
						<!-- Status -->
						<?php if($compressor_code_status == 0) { echo '<div class="status status-off" title="0" rel="compressor_code_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="compressor_code_status"></div>'; } ?>
						
						<input name="compressor_code_status" value="<?php echo $compressor_code_status; ?>" id="compressor_code_status" type="hidden" />
						
						<p style="font-family:Open Sans;color:#4c4c4c;font-size:12px;line-height: 21px;padding-top: 15px">The content of css and js files are placed in a single file, delete spaces, which allows for faster page loading. Changes made when this option is enabled will be visible after an hour.</p>
						
						<div class="hint" style="margin-top: 17px">You can enable Compressor code ONLY when your store will be complete and no more changes will be made.</div>
						
					</div>
					
					<!-- End Compressor Code -->
					
					<!-- Compressor Code -->
					
					<div id="tab_install_data" class="tab-content">

                        <div class="section">
                            <p style="font-family:Open Sans;color:#4c4c4c;font-size:12px;line-height: 21px;padding-top: 12px">Our theme is MultiStore ready and you can install sample data for each store with some restrictions. Demo content for modules: <b>“Advanded Grid”</b> and <b>“Custom Module”</b> is added as new module on the list. Demo content for other module is replaced. If you have already <b>“MegaMenu”</b> craeted and you install new demo content for this module, the old one will be replaced.<br><br>If you want to make your shop look exactly like our demo. Install sample data.</p>

                            <div class="input" style="border: none">

                                <p style="width:180px">Select version:</p>
                                <select name="select_demo" id="select_demo">
                                     <option value="12" <?php if($select_demo == '12'){echo ' selected="selected"';} ?>>antique</option>
                                     <option value="35" <?php if($select_demo == '35'){echo ' selected="selected"';} ?>>architecture</option>
                                     <option value="47" <?php if($select_demo == '47'){echo ' selected="selected"';} ?>>audio</option>
                                     <option value="43" <?php if($select_demo == '43'){echo ' selected="selected"';} ?>>bakery</option>
                                     <option value="10" <?php if($select_demo == '10'){echo ' selected="selected"';} ?>>barber</option>
                                     <option value="50" <?php if($select_demo == '50'){echo ' selected="selected"';} ?>>books</option>
                                     <option value="32" <?php if($select_demo == '32'){echo ' selected="selected"';} ?>>cameras</option>
                                     <option value="42" <?php if($select_demo == '42'){echo ' selected="selected"';} ?>>carparts</option>
                                     <option value="61" <?php if($select_demo == '61'){echo ' selected="selected"';} ?>>carparts2</option>
                                     <option value="11" <?php if($select_demo == '11'){echo ' selected="selected"';} ?>>ceramica</option>
                                     <option value="45" <?php if($select_demo == '45'){echo ' selected="selected"';} ?>>cleaning</option>
                                     <option value="41" <?php if($select_demo == '41'){echo ' selected="selected"';} ?>>coffee</option>
                                     <option value="3" <?php if($select_demo == '3'){echo ' selected="selected"';} ?>>computer</option>
                                     <option value="4" <?php if($select_demo == '4'){echo ' selected="selected"';} ?>>computer2</option>
                                     <option value="5" <?php if($select_demo == '5'){echo ' selected="selected"';} ?>>computer3</option>
                                     <option value="18" <?php if($select_demo == '18'){echo ' selected="selected"';} ?>>computer4</option>
                                     <option value="25" <?php if($select_demo == '25'){echo ' selected="selected"';} ?>>computer5</option>
                                     <option value="56" <?php if($select_demo == '56'){echo ' selected="selected"';} ?>>computer6</option>
                                     <option value="57" <?php if($select_demo == '57'){echo ' selected="selected"';} ?>>computer7</option>
                                     <option value="58" <?php if($select_demo == '58'){echo ' selected="selected"';} ?>>computer8</option>
                                     <option value="22" <?php if($select_demo == '22'){echo ' selected="selected"';} ?>>cosmetics</option>
                                     <option value="38" <?php if($select_demo == '38'){echo ' selected="selected"';} ?>>cosmetics2</option>
                                     <option value="1" <?php if($select_demo == '1'){echo ' selected="selected"';} ?>>default</option>
                                     <option value="2" <?php if($select_demo == '2'){echo ' selected="selected"';} ?>>default full width</option>
                                     <option value="39" <?php if($select_demo == '39'){echo ' selected="selected"';} ?>>exclusive</option>
                                     <option value="27" <?php if($select_demo == '27'){echo ' selected="selected"';} ?>>fashion2</option>
                                     <option value="31" <?php if($select_demo == '31'){echo ' selected="selected"';} ?>>fashion3</option>
                                     <option value="63" <?php if($select_demo == '63'){echo ' selected="selected"';} ?>>fashion4</option>
                                     <option value="64" <?php if($select_demo == '64'){echo ' selected="selected"';} ?>>fashion5</option>
                                     <option value="68" <?php if($select_demo == '68'){echo ' selected="selected"';} ?>>fashion6</option>
                                     <option value="69" <?php if($select_demo == '69'){echo ' selected="selected"';} ?>>fashion7</option>
                                     <option value="70" <?php if($select_demo == '70'){echo ' selected="selected"';} ?>>fashion8</option>
                                     <option value="26" <?php if($select_demo == '26'){echo ' selected="selected"';} ?>>fashionsimple</option>
                                     <option value="71" <?php if($select_demo == '71'){echo ' selected="selected"';} ?>>fishing</option>
                                     <option value="46" <?php if($select_demo == '46'){echo ' selected="selected"';} ?>>flowers</option>
                                     <option value="19" <?php if($select_demo == '19'){echo ' selected="selected"';} ?>>furniture</option>
                                     <option value="15" <?php if($select_demo == '15'){echo ' selected="selected"';} ?>>games</option>
                                     <option value="17" <?php if($select_demo == '17'){echo ' selected="selected"';} ?>>games2</option>
                                     <option value="29" <?php if($select_demo == '29'){echo ' selected="selected"';} ?>>games3</option>
                                     <option value="7" <?php if($select_demo == '7'){echo ' selected="selected"';} ?>>gardentools</option>
                                     <option value="28" <?php if($select_demo == '28'){echo ' selected="selected"';} ?>>gardentools2</option>
                                     <option value="23" <?php if($select_demo == '23'){echo ' selected="selected"';} ?>>glamshop</option>
                                     <option value="33" <?php if($select_demo == '33'){echo ' selected="selected"';} ?>>grocery</option>
                                     <option value="48" <?php if($select_demo == '48'){echo ' selected="selected"';} ?>>holidays</option>
                                     <option value="8" <?php if($select_demo == '8'){echo ' selected="selected"';} ?>>jewelry</option>
                                     <option value="9" <?php if($select_demo == '9'){echo ' selected="selected"';} ?>>jewelry black</option>
                                     <option value="74" <?php if($select_demo == '74'){echo ' selected="selected"';} ?>>jewelry black2</option>
                                     <option value="30" <?php if($select_demo == '30'){echo ' selected="selected"';} ?>>jewelry2</option>
                                     <option value="54" <?php if($select_demo == '54'){echo ' selected="selected"';} ?>>lingerie</option>
                                     <option value="55" <?php if($select_demo == '55'){echo ' selected="selected"';} ?>>lingerie2</option>
                                     <option value="34" <?php if($select_demo == '34'){echo ' selected="selected"';} ?>>market</option>
                                     <option value="36" <?php if($select_demo == '36'){echo ' selected="selected"';} ?>>matrialarts</option>
                                     <option value="24" <?php if($select_demo == '24'){echo ' selected="selected"';} ?>>medic</option>
                                     <option value="21" <?php if($select_demo == '21'){echo ' selected="selected"';} ?>>military</option>
                                     <option value="13" <?php if($select_demo == '13'){echo ' selected="selected"';} ?>>naturalcosmetics</option>
                                     <option value="72" <?php if($select_demo == '72'){echo ' selected="selected"';} ?>>oneproduct</option>
                                     <option value="40" <?php if($select_demo == '40'){echo ' selected="selected"';} ?>>perfume</option>
                                     <option value="59" <?php if($select_demo == '59'){echo ' selected="selected"';} ?>>petshop</option>
                                     <option value="60" <?php if($select_demo == '60'){echo ' selected="selected"';} ?>>petshop2</option>
                                     <option value="51" <?php if($select_demo == '51'){echo ' selected="selected"';} ?>>shoes</option>
                                     <option value="52" <?php if($select_demo == '52'){echo ' selected="selected"';} ?>>shoes2</option>
                                     <option value="53" <?php if($select_demo == '53'){echo ' selected="selected"';} ?>>shoes3</option>
                                     <option value="16" <?php if($select_demo == '16'){echo ' selected="selected"';} ?>>spices</option>
                                     <option value="37" <?php if($select_demo == '37'){echo ' selected="selected"';} ?>>sport</option>
                                     <option value="73" <?php if($select_demo == '73'){echo ' selected="selected"';} ?>>sport2</option>
                                     <option value="49" <?php if($select_demo == '49'){echo ' selected="selected"';} ?>>sportwinter</option>
                                     <option value="65" <?php if($select_demo == '65'){echo ' selected="selected"';} ?>>stationery</option>
                                     <option value="66" <?php if($select_demo == '66'){echo ' selected="selected"';} ?>>stationery2</option>
                                     <option value="6" <?php if($select_demo == '6'){echo ' selected="selected"';} ?>>tools</option>
                                     <option value="62" <?php if($select_demo == '62'){echo ' selected="selected"';} ?>>tools2</option>
                                     <option value="20" <?php if($select_demo == '20'){echo ' selected="selected"';} ?>>toys</option>
                                     <option value="44" <?php if($select_demo == '44'){echo ' selected="selected"';} ?>>toys2</option>
                                     <option value="67" <?php if($select_demo == '67'){echo ' selected="selected"';} ?>>toys3</option>
                                     <option value="14" <?php if($select_demo == '14'){echo ' selected="selected"';} ?>>wine</option>
                                </select>

                                <div class="clear"></div>

                             </div>
                        
                        </div>
									
                            <div class="section">
                                <div class="section-title">
                                    <h4>Install sample data <span id="demo">for default version</span>:</h4>
                                </div>
                                <div class="section-content">
								
						

                                <div class="input versions version-1 version-2 version-3 version-4 version-5 version-6 version-7 version-8 version-9 version-10 version-11 version-12 version-13 version-14 version-15 version-16 version-17 version-18 version-19 version-20 version-21 version-22 version-23 version-24 version-25 version-26 version-27 version-28 version-29 version-30 version-31 version-32 version-33 version-34 version-35 version-36 version-37 version-38 version-39 version-40 version-41 version-42 version-43 version-44 version-45 version-46 version-47 version-48 version-49 version-50 version-51 version-52 version-53 version-54 version-55 version-56 version-57 version-58 version-59 version-60 version-61 version-62 version-63 version-64 version-65 version-66 version-67 version-68 version-69 version-70 version-71 version-72 version-73 version-74">
                                    <p style="width:450px">Advanced grid (categories wall, big sale, footer, products):</p>
                                    <input type="submit" name="install_advanced_grid" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1">
                                    <p style="width:450px">Breadcrumb background image:</p>
                                    <input type="submit" name="install_breadcrumb_background_image" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1 version-2 version-3 version-4 version-5 version-6 version-7 version-10 version-11 version-12 version-13 version-14 version-15 version-16 version-17 version-18 version-20 version-21 version-22 version-23 version-24 version-25 version-26 version-27 version-28 version-29 version-30 version-32 version-35 version-37 version-38 version-39 version-40 version-41 version-42 version-43 version-44 version-45 version-47 version-50 version-51 version-52 version-53 version-54 version-55 version-56 version-57 version-58 version-59 version-60 version-61 version-62 version-63 version-64 version-65 version-66 version-67 version-68 version-69 version-71 version-73 version-74">
                                    <p style="width:450px">Filter product:</p>
                                    <input type="submit" name="install_filter_product" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1">
                                    <p style="width:450px">Header notice:</p>
                                    <input type="submit" name="install_header_notice" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1">
                                    <p style="width:450px">Cookie module:</p>
                                    <input type="submit" name="install_cookie_module" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1">
                                    <p style="width:450px">Product questions:</p>
                                    <input type="submit" name="install_product_questions" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1">
                                    <p style="width:450px">FAQ:</p>
                                    <input type="submit" name="install_faq" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1 version-2 version-3 version-4 version-5 version-6 version-7 version-8 version-9 version-10 version-11 version-12 version-13 version-14 version-15 version-16 version-17 version-18 version-19 version-20 version-21 version-22 version-23 version-24 version-25 version-26 version-27 version-28 version-29 version-30 version-31 version-32 version-33 version-34 version-35 version-36 version-37 version-38 version-41 version-42 version-43 version-44 version-45 version-46 version-47 version-48 version-49 version-50 version-51 version-52 version-53 version-54 version-55 version-56 version-57 version-58 version-59 version-60 version-61 version-62 version-63 version-64 version-65 version-66 version-67 version-68 version-69 version-70 version-71 version-72 version-73 version-74">
                                    <p style="width:450px">Custom module (banners):</p>
                                    <input type="submit" name="install_custom_module" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1 version-2 version-3 version-4 version-5 version-6 version-7 version-10 version-11 version-12 version-13 version-14 version-15 version-16 version-17 version-18 version-19 version-20 version-21 version-22 version-23 version-24 version-25 version-27 version-28 version-29 version-30 version-32 version-34 version-35 version-36 version-37 version-38 version-39 version-42 version-44 version-45 version-51 version-52 version-54 version-55 version-56 version-60 version-63 version-64 version-68 version-69 version-70 version-73 version-74">
                                    <p style="width:450px">Camera slider:</p>
                                    <input type="submit" name="install_camera_slider" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1 version-2 version-3 version-4 version-5 version-6 version-7 version-8 version-9 version-10 version-11 version-12 version-13 version-14 version-15 version-16 version-17 version-18 version-19 version-20 version-21 version-22 version-23 version-24 version-25 version-26 version-27 version-28 version-29 version-30 version-31 version-32 version-33 version-34 version-35 version-36 version-37 version-38 version-39 version-40 version-41 version-42 version-43 version-44 version-45 version-46 version-47 version-48 version-49 version-50 version-51 version-52 version-53 version-54 version-55 version-56 version-59 version-60 version-61 version-62 version-63 version-64 version-65 version-66 version-67 version-68 version-69 version-70 version-71 version-72 version-73 version-74">
                                    <p style="width:450px">MegaMenu:</p>
                                    <input type="submit" name="install_megamenu" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1 version-2 version-26">
                                    <p style="width:450px">Popup:</p>
                                    <input type="submit" name="install_popup" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>
                                
                                <div class="input versions version-63" style="display: none">
                                    <p style="width:450px">Carousel item:</p>
                                    <input type="submit" name="install_carousel_item" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1 version-2 version-3 version-4 version-5 version-6 version-7 version-16 version-18">
                                    <p style="width:450px">Product blocks:</p>
                                    <input type="submit" name="install_product_blocks" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1 version-22 version-24 version-14 version-32">
                                    <p style="width:450px">Blog latest posts:</p>
                                    <input type="submit" name="install_blog_latest_posts" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>

                                <div class="input versions version-1">
                                    <p style="width:450px">Blog:</p>
                                    <input type="submit" name="install_blog" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">

                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
					</div>
					
					<!-- End Compressor Code -->
					<!-- Advanced Settings Code -->
					
					<div id="tab_advanced_settings" class="tab-content">
                        <div class="relative">
                            <div class="desc-switcher hide-desc">Hide <br> description</div>
                            <div class="desc-switcher show-desc" style="display: none">Show <br> description</div>

                            <div class="advanced_description">


                                <p>
                                    In advanced settings you can change type of each module in your store. <br>
                                    Each type have different css settings for margins, paddings, borders and other values in css for each element.
                                </p>

                                <br>
                                <b>IMPORTANT</b>
                                <div class="hint">
                                    Here you can choose only type.<br>
                                    If you want to have content from other skin you need to set it in advanced grid or other module.
                                </div>
                                 <br>
                                 <b>EXAMPLE</b><br>
                                If you want to have footer settings in <span class="color-green">Toys2 skin</span> like footer settings in <span class="color-green">Grocery skin</span> you can change it here.
                                <div class="preview-container">
                                    <img src="view/image/module_template/before_after_1.png" width="750" height="293" alt="desc"/>
                                    <img src="view/image/module_template/before_after_2.png" width="750" height="293" alt="desc"/>
                                </div>
                                <br>
                                <p>
                                    And because it’s should be easy to check each type we created live editor for these settings
                                </p>
                            </div>
                        </div>
                        
                        <a href="<?php echo $live_editor_link; ?>" class="live-editor">
                            
                        </a>

						<!-- Elements -->
                        <div class="section">
                            <div class="section-title">
                                <h4>Header<br> section</h4>
                            </div>
                            <div class="section-content">
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Header margin top</p>
                                   <select name="header_margin_top">
                                       <option value="0"<?php if($header_margin_top =='0'){echo ' selected="selected"';} ?>>0px</option>
                                       <option value="20"<?php if($header_margin_top =='20'){echo ' selected="selected"';} ?>>20px</option>
                                       <option value="30"<?php if($header_margin_top =='30'){echo ' selected="selected"';} ?>>30px</option>
                                       <option value="80"<?php if($header_margin_top =='80'){echo ' selected="selected"';} ?>>80px</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>


                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Top Bar</p>
                                   <select name="top_bar_type">
                                       <option value="0"<?php if($top_bar_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($top_bar_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($top_bar_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($top_bar_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">My account</p>
                                   <select name="my_account_type">
                                       <option value="0"<?php if($my_account_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($my_account_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($my_account_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($my_account_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($my_account_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Cart block</p>
                                   <select name="cart_block_type">
                                       <option value="0"<?php if($cart_block_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($cart_block_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($cart_block_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($cart_block_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($cart_block_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($cart_block_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($cart_block_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="8"<?php if($cart_block_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                       <option value="9"<?php if($cart_block_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                                       <option value="10"<?php if($cart_block_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                                       <option value="11"<?php if($cart_block_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

                                
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Category box</p>
                                   <select name="category_box_style">
                                       <option value="0"<?php if($category_box_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="1"<?php if($category_box_style =='1'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="2"<?php if($category_box_style =='2'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="3"<?php if($category_box_style =='3'){echo ' selected="selected"';} ?>>Type 4</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
                                
                                  <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Megamenu label</p>
                                   <select name="megamenu_label_type">
                                       <option value="0"<?php if($megamenu_label_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($megamenu_label_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($megamenu_label_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($megamenu_label_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($megamenu_label_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($megamenu_label_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($megamenu_label_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
                                  
                                  
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Search</p>
                                   <select name="search_type_in_header">
                                       <option value="0"<?php if($search_type_in_header =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($search_type_in_header =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($search_type_in_header =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($search_type_in_header =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($search_type_in_header =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($search_type_in_header =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($search_type_in_header =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Menu</p>
                                   <select name="megamenu_type">
                                       <option value="0"<?php if($megamenu_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($megamenu_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($megamenu_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($megamenu_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($megamenu_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($megamenu_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($megamenu_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="8"<?php if($megamenu_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                       <option value="9"<?php if($megamenu_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                                       <option value="10"<?php if($megamenu_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                                       <option value="11"<?php if($megamenu_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                                       <option value="12"<?php if($megamenu_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                                       <option value="13"<?php if($megamenu_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                                       <option value="14"<?php if($megamenu_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                                       <option value="15"<?php if($megamenu_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                                       <option value="16"<?php if($megamenu_type =='16'){echo ' selected="selected"';} ?>>Type 16</option>
                                       <option value="17"<?php if($megamenu_type =='17'){echo ' selected="selected"';} ?>>Type 17</option>
                                       <option value="18"<?php if($megamenu_type =='18'){echo ' selected="selected"';} ?>>Type 18</option>
                                       <option value="19"<?php if($megamenu_type =='19'){echo ' selected="selected"';} ?>>Type 19</option>
                                       <option value="20"<?php if($megamenu_type =='20'){echo ' selected="selected"';} ?>>Type 20</option>
                                       <option value="21"<?php if($megamenu_type =='21'){echo ' selected="selected"';} ?>>Type 21</option>
                                       <option value="22"<?php if($megamenu_type =='22'){echo ' selected="selected"';} ?>>Type 22</option>
                                       <option value="23"<?php if($megamenu_type =='23'){echo ' selected="selected"';} ?>>Type 23</option>
                                       <option value="24"<?php if($megamenu_type =='24'){echo ' selected="selected"';} ?>>Type 24</option>
                                       <option value="25"<?php if($megamenu_type =='25'){echo ' selected="selected"';} ?>>Type 25</option>
                                       <option value="26"<?php if($megamenu_type =='26'){echo ' selected="selected"';} ?>>Type 26</option>
                                       <option value="27"<?php if($megamenu_type =='27'){echo ' selected="selected"';} ?>>Type 27</option>
                                       <option value="28"<?php if($megamenu_type =='28'){echo ' selected="selected"';} ?>>Type 28</option>
                                       <option value="29"<?php if($megamenu_type =='29'){echo ' selected="selected"';} ?>>Type 29</option>
                                       <option value="30"<?php if($megamenu_type =='30'){echo ' selected="selected"';} ?>>Type 30</option>
                                       <option value="31"<?php if($megamenu_type =='31'){echo ' selected="selected"';} ?>>Type 31</option>
                                       <option value="32"<?php if($megamenu_type =='32'){echo ' selected="selected"';} ?>>Type 32</option>
                                       <option value="33"<?php if($megamenu_type =='33'){echo ' selected="selected"';} ?>>Type 33</option>
                                       <option value="34"<?php if($megamenu_type =='34'){echo ' selected="selected"';} ?>>Type 34</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
                                
                                
                                 <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Dropdown menu type</p>
                                   <select name="dropdown_menu_type">
                                       <option value="0"<?php if($dropdown_menu_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($dropdown_menu_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($dropdown_menu_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($dropdown_menu_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($dropdown_menu_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>


                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Buttons prev/next in slider</p>
                                   <select name="buttons_prev_next_in_slider">
                                       <option value="0"<?php if($buttons_prev_next_in_slider =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($buttons_prev_next_in_slider =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

						     
                                
                            </div>
                        </div>
                        
                        <div class="section">
                            <div class="section-title">
                                <h4>Category<br> page</h4>
                            </div>
                            <div class="section-content">
                                
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Breadcrumb</p>
                                   <select name="breadcrumb_style">
                                       <option value="0"<?php if($breadcrumb_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="1"<?php if($breadcrumb_style =='1'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="2"<?php if($breadcrumb_style =='2'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="3"<?php if($breadcrumb_style =='3'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="4"<?php if($breadcrumb_style =='4'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="5"<?php if($breadcrumb_style =='5'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="6"<?php if($breadcrumb_style =='6'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="7"<?php if($breadcrumb_style =='7'){echo ' selected="selected"';} ?>>Type 8</option>
                                       <option value="8"<?php if($breadcrumb_style =='8'){echo ' selected="selected"';} ?>>Type 9</option>
                                       <option value="9"<?php if($breadcrumb_style =='9'){echo ' selected="selected"';} ?>>Type 10</option>
                                       <option value="10"<?php if($breadcrumb_style =='10'){echo ' selected="selected"';} ?>>Type 11</option>
                                       <option value="11"<?php if($breadcrumb_style =='11'){echo ' selected="selected"';} ?>>Type 12</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
                                
     
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Product grid</p>
                                   <select name="product_grid_type">
                                       <option value="0"<?php if($product_grid_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($product_grid_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($product_grid_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($product_grid_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($product_grid_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($product_grid_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($product_grid_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="8"<?php if($product_grid_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Product list</p>
                                   <select name="product_list_type">
                                       <option value="0"<?php if($product_list_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($product_list_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($product_list_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($product_list_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
						     
                            </div>
                        </div>
                        
                        <div class="section">
                            <div class="section-title">
                                <h4>Product<br> page</h4>
                            </div>
                            <div class="section-content">
                                 
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Product Page</p>
                                   <select name="product_page_type">
                                       <option value="0"<?php if($product_page_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($product_page_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($product_page_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
                                
                                <!-- Input -->
                               <div class="input">
                                  <p style="width:270px">Products buttons</p>
                                  <select name="products_buttons_action">
                                      <option value="0"<?php if($products_buttons_action =='0'){echo ' selected="selected"';} ?>>Default</option>
                                      <option value="2"<?php if($products_buttons_action =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                      <option value="3"<?php if($products_buttons_action =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                      <option value="4"<?php if($products_buttons_action =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                  </select>
                                  <div class="clear"></div>
                                </div>
						     
                            </div>
                        </div>
                        
                        <div class="section">
                            <div class="section-title">
                                <h4>Footer<br> section</h4>
                            </div>
                            <div class="section-content">
                                 
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Footer type</p>
                                   <select name="footer_type">
                                       <option value="0"<?php if($footer_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($footer_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($footer_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($footer_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($footer_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($footer_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($footer_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="8"<?php if($footer_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                       <option value="9"<?php if($footer_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                                       <option value="10"<?php if($footer_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                                       <option value="11"<?php if($footer_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                                       <option value="12"<?php if($footer_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                                       <option value="13"<?php if($footer_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                                       <option value="14"<?php if($footer_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                                       <option value="15"<?php if($footer_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                                       <option value="16"<?php if($footer_type =='16'){echo ' selected="selected"';} ?>>Type 16</option>
                                       <option value="17"<?php if($footer_type =='17'){echo ' selected="selected"';} ?>>Type 17</option>
                                       <option value="18"<?php if($footer_type =='18'){echo ' selected="selected"';} ?>>Type 18</option>
                                       <option value="19"<?php if($footer_type =='19'){echo ' selected="selected"';} ?>>Type 19</option>
                                       <option value="20"<?php if($footer_type =='20'){echo ' selected="selected"';} ?>>Type 20</option>
                                       <option value="21"<?php if($footer_type =='21'){echo ' selected="selected"';} ?>>Type 21</option>
                                       <option value="22"<?php if($footer_type =='22'){echo ' selected="selected"';} ?>>Type 22</option>
                                       <option value="23"<?php if($footer_type =='23'){echo ' selected="selected"';} ?>>Type 23</option>
                                       <option value="24"<?php if($footer_type =='24'){echo ' selected="selected"';} ?>>Type 24</option>
                                       <option value="25"<?php if($footer_type =='25'){echo ' selected="selected"';} ?>>Type 25</option>
                                       <option value="26"<?php if($footer_type =='26'){echo ' selected="selected"';} ?>>Type 26</option>
                                       <option value="27"<?php if($footer_type =='27'){echo ' selected="selected"';} ?>>Type 27</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
						     
                            </div>
                        </div>
                        
                        <div class="section">
                            <div class="section-title">
                                <h4>Other</h4>
                            </div>
                            <div class="section-content">
                                	     
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Border width in full-width</p>
                                   <select name="border_width">
                                       <option value="0"<?php if($border_width =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="1"<?php if($border_width =='1'){echo ' selected="selected"';} ?>>100%</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
                                
                                   
                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Countdown special</p>
                                    <select name="countdown_special">
                                        <option value="0"<?php if($countdown_special =='0'){echo ' selected="selected"';} ?>>Default</option>
                                        <option value="2"<?php if($countdown_special =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                        <option value="3"<?php if($countdown_special =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                        <option value="4"<?php if($countdown_special =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                        <option value="5"<?php if($countdown_special =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                        <option value="6"<?php if($countdown_special =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                        <option value="7"<?php if($countdown_special =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                        <option value="8"<?php if($countdown_special =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                        <option value="9"<?php if($countdown_special =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                                    </select>
                                    <div class="clear"></div>
                                 </div>
                                
                                 
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Button type</p>
                                   <select name="button_type">
                                       <option value="0"<?php if($button_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($button_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($button_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($button_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($button_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($button_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($button_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="8"<?php if($button_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                       <option value="9"<?php if($button_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                                       <option value="10"<?php if($button_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                                       <option value="11"<?php if($button_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                                       <option value="12"<?php if($button_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                                       <option value="13"<?php if($button_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                                       <option value="14"<?php if($button_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                                       <option value="15"<?php if($button_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Sale, new label type</p>
                                   <select name="sale_new_type">
                                       <option value="0"<?php if($sale_new_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($sale_new_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($sale_new_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($sale_new_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($sale_new_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($sale_new_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($sale_new_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="8"<?php if($sale_new_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                       <option value="9"<?php if($sale_new_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                                       <option value="10"<?php if($sale_new_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
                                
                                    
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Box type</p>
                                   <select name="box_type">
                                       <option value="0"<?php if($box_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($box_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($box_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($box_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($box_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($box_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($box_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                       <option value="8"<?php if($box_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                                       <option value="9"<?php if($box_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                                       <option value="10"<?php if($box_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                                       <option value="11"<?php if($box_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                                       <option value="12"<?php if($box_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                                       <option value="13"<?php if($box_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                                       <option value="14"<?php if($box_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                                       <option value="15"<?php if($box_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                                       <option value="16"<?php if($box_type =='16'){echo ' selected="selected"';} ?>>Type 16</option>
                                       <option value="17"<?php if($box_type =='17'){echo ' selected="selected"';} ?>>Type 17</option>
                                       <option value="18"<?php if($box_type =='18'){echo ' selected="selected"';} ?>>Type 18</option>
                                       <option value="19"<?php if($box_type =='19'){echo ' selected="selected"';} ?>>Type 19</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>
						     
   
                                <!-- Input -->
                                <div class="input">
                                   <p style="width:270px">Inputs type</p>
                                   <select name="inputs_type">
                                       <option value="0"<?php if($inputs_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                                       <option value="2"<?php if($inputs_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                                       <option value="3"<?php if($inputs_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                                       <option value="4"<?php if($inputs_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                                       <option value="5"<?php if($inputs_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                                       <option value="6"<?php if($inputs_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                                       <option value="7"<?php if($inputs_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                                   </select>
                                   <div class="clear"></div>
                                </div>

                            </div>
                        </div>
						
					</div>
					
					<!-- End Advanced Settings Code -->
					
					<!-- Custom block -->
					
					<div id="tab_custom_block" class="tab-content3">
						<div class="footer_left" style="margin-top: 280px">
							<div id="tabs_custom_block" class="htabs main-tabs">
								<?php foreach ($languages as $language): ?>
								<a href="#tab_custom_block_<?php echo $language['language_id']; ?>"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							</div>
						</div>
						
						<div class="footer_right">
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							<div id="tab_custom_block_<?php echo $language_id; ?>">
								<div id="tabs_custom_block_<?php echo $language_id; ?>" class="htabs tabs-design">
									<a href="#tab_contact_page_<?php echo $language_id; ?>" class="tcontact"><span>Contact page</span></a>
									<a href="#tab_product_page_<?php echo $language_id; ?>" class="tproduct"><span>Product page</span></a>
								</div>
								
								<div id="tab_contact_page_<?php echo $language_id; ?>" class="tab-content4">
									
                                    <div class="section">
                                    <!-- Status -->
									<?php if(isset($custom_block['contact_page'][$language_id]['status'])) { ?>
									<?php if($custom_block['contact_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } ?>
									
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['contact_page'][$language_id]['status']; ?>" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; ?>
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Custom block</h4>
                                        </div>
                                        <div class="section-content">
                                            <div class="input">
                                                <p>Heading:</p>
                                                <?php if(isset($custom_block['contact_page'][$language_id]['heading'])) { ?>
                                                <input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" type="text" value="<?php echo $custom_block['contact_page'][$language_id]['heading']; ?>" />
                                                <?php } else { ?>
                                                <input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" type="text" value="" />
                                                <?php } ?>
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input-with-editor editor-no-border">										
                                                <?php if(isset($custom_block['contact_page'][$language_id]['text'])) { ?>
                                                <textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]" id="custom_block_contact_page_<?php echo $language_id; ?>_text"><?php echo $custom_block['contact_page'][$language_id]['text']; ?></textarea>
                                                <?php } else { ?>
                                                <textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]" id="custom_block_contact_page_<?php echo $language_id; ?>_text"></textarea>
                                                <?php } ?>
                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#custom_block_contact_page_<?php echo $language_id; ?>_text').summernote({
                                                        height: 400
                                                    });
                                                </script>
                                            </div>
                                        </div>
                                    </div>
								</div>
								
								<div id="tab_product_page_<?php echo $language_id; ?>" class="tab-content4">
									
                                    <div class="section">
                                        <!-- Status -->
                                        <?php if(isset($custom_block['product_page'][$language_id]['status'])) { ?>
                                        <?php if($custom_block['product_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } ?>

                                        <input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['product_page'][$language_id]['status']; ?>" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
                                        <?php } else { ?>
                                        <?php echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; ?>
                                        <input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
                                        <?php } ?>
									</div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Custom block</h4>
                                        </div>
                                        <div class="section-content">
                                            <div class="input">
                                                <p>Heading:</p>
                                                <?php if(isset($custom_block['product_page'][$language_id]['heading'])) { ?>
                                                <input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" type="text" value="<?php echo $custom_block['product_page'][$language_id]['heading']; ?>" />
                                                <?php } else { ?>
                                                <input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" type="text" value="" />
                                                <?php } ?>
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input-with-editor editor-no-border">										
                                                <?php if(isset($custom_block['product_page'][$language_id]['text'])) { ?>
                                                <textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]" id="custom_block_product_page_<?php echo $language_id; ?>_text"><?php echo $custom_block['product_page'][$language_id]['text']; ?></textarea>
                                                <?php } else { ?>
                                                <textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]" id="custom_block_product_page_<?php echo $language_id; ?>_text"></textarea>
                                                <?php } ?>
                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#custom_block_product_page_<?php echo $language_id; ?>_text').summernote({
                                                        height: 400
                                                    });
                                                </script>
                                            </div>
                                        </div>
                                    </div>
								</div>
							</div>
							
							<script type="text/javascript"><!--
							$('#tabs_custom_block_<?php echo $language_id; ?> a').tabs();
							if($.cookie('tabs_custom_block_<?php echo $language_id; ?>') > 0) {
								$('#tabs_custom_block_<?php echo $language_id; ?> a').eq($.cookie('tabs_custom_block_<?php echo $language_id; ?>')).trigger("click");
							}
							$('#tabs_custom_block_<?php echo $language_id; ?> a').click(function() {
								var element_index = $('#tabs_custom_block_<?php echo $language_id; ?> a').index(this);
								$.cookie('tabs_custom_block_<?php echo $language_id; ?>', element_index); 
							});
							//--></script> 
							<?php } ?>
						</div>		
					</div>
					
					<!-- End Custom block -->
										
					<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;position:relative;margin-top:-1px"></p>
				
				</div>
				
				<!-- End Tabs -->
				
				<!-- Buttons -->
				
				<div class="buttons"><input type="submit" name="button-save" class="button-save" value=""></div>
				
				<!-- End Buttons -->
			
			</div>
		
		</div>
		<!-- End Content -->
		<?php } else { ?>
			<div class="content">
				<div style="padding:20px 40px;text-align:center;">
					You need to add or active skin.
				</div>
			</div>
		<?php } ?>
		
	</form>
	
</div>
<!-- End Theme Options -->

</div>

<!-- END #CONTENT -->

<script type="text/javascript">

$(document).ready(function() {

	$('.color_input input').ColorPicker({
		onChange: function (hsb, hex, rgb, el) {
			$(el).val("#" +hex);
			$(el).next('.color_selected').css("background", "#" + hex);
		},
		onShow: function (colpkr) {
			$(colpkr).show();
			return false;
		},
		onHide: function (colpkr) {
			$(colpkr).hide();
			return false;
		}
	});
});
</script>
<script type="text/javascript"><!--
$(document).ready(function(){ 
	$('#tabs a').tabs();
	if($.cookie('tabs_cookie') > 0) {
		$('#tabs a').eq($.cookie('tabs_cookie')).trigger("click");
	}
	$('#tabs a').click(function() {
		var element_index = $('#tabs a').index(this);
		$.cookie('tabs_cookie', element_index); 
	});
	
	$('#tabs_design a').tabs();
	if($.cookie('tabs_design_cookie') > 0) {
		$('#tabs_design a').eq($.cookie('tabs_design_cookie')).trigger("click");
	}
	$('#tabs_design a').click(function() {
		var element_index = $('#tabs_design a').index(this);
		$.cookie('tabs_design_cookie', element_index); 
	});
	
	$('#tabs_background_layers a').tabs();
	
	$('#tabs_footer a').tabs();
	if($.cookie('tabs_footer_cookie') > 0) {
		$('#tabs_footer a').eq($.cookie('tabs_footer_cookie')).trigger("click");
	}
	$('#tabs_footer a').click(function() {
		var element_index = $('#tabs_footer a').index(this);
		$.cookie('tabs_footer_cookie', element_index); 
	});
	
	$('#tabs_general a').tabs();
	if($.cookie('tabs_general_cookie') > 0) {
		$('#tabs_general a').eq($.cookie('tabs_general_cookie')).trigger("click");
	}
	$('#tabs_general a').click(function() {
		var element_index = $('#tabs_general a').index(this);
		$.cookie('tabs_general_cookie', element_index); 
	});
		
	$('#tabs_widgets a').tabs();
	if($.cookie('tabs_widgets_cookie') > 0) {
		$('#tabs_widgets a').eq($.cookie('tabs_widgets_cookie')).trigger("click");
	}
	$('#tabs_widgets a').click(function() {
		var element_index = $('#tabs_widgets a').index(this);
		$.cookie('tabs_widgets_cookie', element_index); 
	});
	
	$('#tabs_custom_code a').tabs();
	if($.cookie('tabs_custom_code_cookie') > 0) {
		$('#tabs_custom_code a').eq($.cookie('tabs_custom_code_cookie')).trigger("click");
	}
	$('#tabs_custom_code a').click(function() {
		var element_index = $('#tabs_custom_code a').index(this);
		$.cookie('tabs_custom_code_cookie', element_index); 
	});
	
	$('#tabs_custom_block a').tabs();
	if($.cookie('tabs_custom_block') > 0) {
		$('#tabs_custom_block a').eq($.cookie('tabs_custom_block')).trigger("click");
	}
	$('#tabs_custom_block a').click(function() {
		var element_index = $('#tabs_custom_block a').index(this);
		$.cookie('tabs_custom_block', element_index); 
	});
});
//--></script> 

<script type="text/javascript">
	<?php foreach ($languages as $language) { ?>
	$('#widget_custom_content_<?php echo $language['language_id']; ?>').summernote({
		height: 200
	});
	<?php } ?>
	
	$('.customblocktabs a').tabs();
</script>

<script type="text/javascript">
jQuery(document).ready(function($) {
	
	$('#theme-options').on('click', '.status', function () {
		
		var styl = $(this).attr("rel");
		var co = $(this).attr("title");
		
		if(co == 1) {
		
			$(this).removeClass('status-on');
			$(this).addClass('status-off');
			$(this).attr("title", "0");

			$("#"+styl+"").val(0);
		
		}
		
		if(co == 0) {
		
			$(this).addClass('status-on');
			$(this).removeClass('status-off');
			$(this).attr("title", "1");

			$("#"+styl+"").val(1);
		
		}
		
	});

});	
</script>
<script type="text/javascript">
$(document).ready(function() {

     $('#theme-options').on('change', 'select#select_demo', function () {
     	$("select#select_demo option:selected").each(function() {
     		$(".versions").hide();
     		$(".version-" + $(this).val()).show();
     		$("#demo").html("for " + $(this).text() + " version");
     	});
     });
     
     <?php if($select_demo > 1) { ?>
          $(".versions").hide();
          $(".version-<?php echo $select_demo; ?>").show();
          $("#demo").html("for " + $("#select_demo option:selected").text() + " version");
     <?php } ?>
	
	$('#theme-options').on('change', 'select.select-page-width', function () {
		$("select.select-page-width option:selected").each(function() {
			if($(this).val() == 2) {
				$(".page-width").show();
			} else {
				$(".page-width").hide();
			}
		});
	});
	
	$('#theme-options').on('change', '.input-subtle-pattern', function () {
		$(this).parent().parent().css("background-image", "url(../image/subtle_patterns/" + $(this).val() + ")");
	});
    
    
    $('.section.accordion .section-title').click(function(){
        if(!$(this).parent().hasClass('opened')){
            $(this).parent().addClass('opened')
            $(this).next('.section-content').hide().stop().slideDown();
        }else{
            $(this).parent().removeClass('opened')
            $(this).next('.section-content').show().stop().slideUp();
        }
    })
    
    $('.header_type').click(function(){
        $('.custom-headers .header_type').removeClass('active');
        $(this).addClass('active');
    })
    
    $('.hover_effect_type').click(function(){
        $('.custom-banners .hover_effect_type').removeClass('active');
        $(this).addClass('active');
        $('.custom-banners').find('input').attr('checked', false);
        $(this).find('input').attr('checked', true);
        $('input[name=hover_effect_type]').attr('value',  $(this).find('input').attr('value'));
    })
    
    $('.subtle-pattern').click(function(){
        $(this).parent().find('.subtle-pattern').removeClass('selected');
        $(this).addClass('selected');
        $(this).find('input').trigger('click');
    })
    
    $('.subtle-pattern input').click(function(e){
        e.stopPropagation();
    })
    
    $('.main-tabs .menu-switcher').click(function(){
        $('.bg-tabs').toggleClass('shrinked');
        if($.cookie('main-menu-shrinked')  == 1) {
            $.cookie('main-menu-shrinked', 0); 
        }else{
            $.cookie('main-menu-shrinked', 1); 
        }
        
    })
    
    $('#tab_advanced_settings .desc-switcher').click(function(){
        if($(this).hasClass('hide-desc')){
            $(this).hide();
            $('#tab_advanced_settings .desc-switcher.show-desc').show();
            $(this).parent().find('.advanced_description').hide();
            $.cookie('advanced-settings-desc-hidden', 1); 
        }else{
            $(this).hide();
            $('#tab_advanced_settings .desc-switcher.hide-desc').show();
            $(this).parent().find('.advanced_description').show();
            $.cookie('advanced-settings-desc-hidden', 0); 
        }
        
    })
    
    $('.preview-container').beforeAfter({
        animateIntro : true,
        introDelay : 1000,
        introDuration : 300,
        showFullLinks : false,
        imagePath: 'view/javascript/beforeafter/'
    });

});
	if($.cookie('main-menu-shrinked')  == 1) {
        $('.bg-tabs').addClass('shrinked');
    }
	if($.cookie('advanced-settings-desc-hidden') == 1) {
        $('#tab_advanced_settings .advanced_description').hide();
        $('#tab_advanced_settings .desc-switcher.hide-desc').hide();
        $('#tab_advanced_settings .desc-switcher.show-desc').show();
    }
	if($.cookie('main-menu-shrinked')  == 1) {
        $('.bg-tabs').addClass('shrinked');
    }
</script>
<?php echo $footer; ?>
