<?php
session_start();
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_GET["action"])) {
switch($_GET["action"]) {
	case "add":
		if(!empty($_POST["quantity"])) {
			$productByCode = $db_handle->runQuery("SELECT * FROM tblproduct WHERE code='" . $_GET["code"] . "'");
			$itemArray = array($productByCode[0]["code"]=>array('name'=>$productByCode[0]["name"], 'code'=>$productByCode[0]["code"], 'quantity'=>$_POST["quantity"], 
			'price'=>$productByCode[0]["price"], 'image'=>$productByCode[0]["image"]));
			
			if(!empty($_SESSION["cart_item"])) {
				if(in_array($productByCode[0]["code"],array_keys($_SESSION["cart_item"]))) {
					foreach($_SESSION["cart_item"] as $k => $v) {
							if($productByCode[0]["code"] == $k) {
								if(empty($_SESSION["cart_item"][$k]["quantity"])) {
									$_SESSION["cart_item"][$k]["quantity"] = 0;
								}
								$_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
							}
					}
				} else {
					$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
				}
			} else {
				$_SESSION["cart_item"] = $itemArray;
			}
		}
	break;
	case "remove":
		if(!empty($_SESSION["cart_item"])) {
			foreach($_SESSION["cart_item"] as $k => $v) {
					if($_GET["code"] == $k)
						unset($_SESSION["cart_item"][$k]);				
					if(empty($_SESSION["cart_item"]))
						unset($_SESSION["cart_item"]);
			}
		}
	break;
	case "empty":
		unset($_SESSION["cart_item"]);
	break;	
}
}
?>
<HTML lang="en">
<HEAD>
<TITLE>KundaMarket</TITLE>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/19ae86c7d6.js"></script>

 

</HEAD>

<style>
    .navbar {
        opacity: 0.9;
        border-bottom: 0.1rem solid #fff;
		border-top: 0.1rem solid #fff;
    }


    .nav-item:hover {
        opacity: 0.93;
        background-color: #424242;
        border-radius: 0.9rem;
    }

    .row:after {
        content: "";
        display: table;
        clear: both;
    }

	.margin-top {
		margin-top: 5rem;
	}

	.headerarka {
	width: 100%;
	height: 41.2rem;
	background-image:
    linear-gradient(
      rgba(0, 0, 0, 0.5),
      rgba(0, 0, 0, 0.5)
    ),  url('headerarka.jpg');
	background-size: cover;
	margin-top: 3.7rem;
	margin-bottom: 2rem;
	z-index: 10 !important;
  }
  .headerarka22 {
	width: 100%;
	height: 100%;
	background-image:
    linear-gradient(
      rgba(0, 0, 0, 0.5),
      rgba(0, 0, 0, 0.5)
    ),  url('headerarka2.jpg');
	background-size: cover;
	margin-top: 3.7rem;
	margin-bottom: 0rem;
	background-repeat:no-repeat;
	
  background-repeat: no-repeat;
  background-attachment: fixed;
  }
  .headerarka33 {
	width: 100%;
	height: 100%;
	background-image:
    linear-gradient(
      rgba(0, 0, 0, 0.5),
      rgba(0, 0, 0, 0.5)
    ),  url('headerarka2.jpg');
	background-size: cover;
	margin-left: 0.4rem !important ;
	margin: 0rem ;
	padding: 0rem !important ;
  background-attachment: fixed;
  }
  .mid h1 {
  font-family: Garamond, serif;
  font-weight: 900;
  color: white;
  text-transform: uppercase;
  margin-bottom: 5rem;
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 7rem;
  transform: translate(-50%, -50%);
}
.mid h2 {
  font-family: Garamond, serif;
  font-weight: 900;
  color: white;
  text-transform: uppercase;
  margin-top: 5rem;
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 2.6rem;
  transform: translate(-50%, -50%);
}
.yazifont {
  font-family: Garamond, serif;
  margin-top: 0.2rem;
 
}
.bottomright {
	margin-left:35%;
	margin-top: 1px;
}

.liste {
	border-radius: 7rem;
}
.fa {
  padding: 10px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.5;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}
.fa-reddit {
  background: #ff5700;
  color: white;
}
.fa-pinterest {
  background: #cb2027;
  color: white;
}
.fa-yahoo {
  background: #430297;
  color: white;
}
.fa-soundcloud {
  background: #ff5500;
  color: white;
}
.iccon {
  font-size:27px !important;
  padding: 0px !important; 
  margin: 0px !important;
}
.sidenav {
  width: 11.2rem;
  height: 41rem;
  position: fixed;
  z-index: 100;
  top: 3.8rem;
  right: 0px;
  opacity: 0.95;
  background: #03C04A;
  overflow-x: hidden;
  padding-left: 2px;
  padding-top: 1rem;
  border-radius: 2rem 0px 0px 2rem;
}

.sidenav button {
  padding: 6px 6px 6px 6px;
  font-size: 1.4rem;
  color: #2196F3;
  display: block;
  border: none;
  text-align:center;
  color:white; 
  width: 10.8rem; 
  background-color:#03C04A; 
}

.sidenav button:hover {
  color: black;
  border-radius:1rem;
}

</style>

<BODY>

<nav class="navbar navbar-dark navbar-expand-sm bg-success fixed-top">
        <div class=" container">
            <a href="/" class="navbar-brand">
                <i class="fa fa-leaf iccon"></i>&nbsp; SuperMarket
            </a>



            <button style="button" class="navbar-toggler " type="button" data-toggle="collapse"
                data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div id="navbarCollapse" class="collapse navbar-collapse">

                <ul class="navbar-nav  ml-auto">
                    <li class="nav-item">
                        <a href="#top" class="nav-link active">
                            Anasayfa
                        </a>
                    </li>
					<li class="nav-item">
                        <a href="#temelGida" class="nav-link active">
                            Temel Gıda
                        </a>
                    </li>
					<li class="nav-item">
                        <a href="#sarkuteri" class="nav-link active">
                            Şarküteri
                        </a>
                    </li>
					<li class="nav-item">
                        <a href="#manav" class="nav-link active">
                            Manav
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#temizlik" class="nav-link active">
                            Temizlik
						</a>
                    </li>
                    <li class="nav-item">
                        <a href="#elektronik" class="nav-link active">
                            Elektronik
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#balik" class="nav-link active">
                            Balık
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#evcildostlar" class="nav-link active">
                            Evcil Dostlarımız
                        </a>
                    </li>
                  
                </ul>

            </div>

        </div>
    </nav>
	<header>
	<div class="mid headerarka">
  <h1>SANALMARKET</h1>
  <br> <br>
  <h2>HADİ BAŞLAYALIM</h2>
  <p style="margin-top:30%; color:white;" class="display-4 bottomright yazifont">Sosyal Medyada Biz</p>
  <ul class="list-group list-group-horizontal bottomright">
  <a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-yahoo"></a>
<a href="#" class="fa fa-reddit"></a>
<a href="#" class="fa fa-pinterest"></a>

  </ul>
</div>

</header>
  <h1 class="display-4 yazifont" style="text-align:center;">ÜRÜNLER</h1>
<div id="shopping-cart">
<div class="margin-top"><a id="btnEmpty" href="index.php?action=empty">Sepeti Boşalt</a>
<?php
if(isset($_SESSION["cart_item"])){
    $total_quantity = 0;
    $total_price = 0;
?> </div>
	
<table class="tbl-cart" cellpadding="10" cellspacing="1">
<tbody>
<tr>
<th style="text-align:left;">Name</th>
<th style="text-align:left;">Code</th>
<th style="text-align:right;" width="5%">Quantity</th>
<th style="text-align:right;" width="10%">Unit Price</th>
<th style="text-align:right;" width="10%">Price</th>
<th style="text-align:center;" width="5%">Remove</th>
</tr>	
<?php		
    foreach ($_SESSION["cart_item"] as $item){
        $item_price = $item["quantity"]*$item["price"];
		?>
				<tr>
				<td><img src="<?php echo $item["image"]; ?>" class="cart-item-image" /><?php echo $item["name"]; ?></td>
				<td><?php echo $item["code"]; ?></td>
				<td style="text-align:right;"><?php echo $item["quantity"]; ?></td>
				<td  style="text-align:right;"><?php echo "₺ ".$item["price"]; ?></td>
				<td  style="text-align:right;"><?php echo "₺ ". number_format($item_price,2); ?></td>
				<td style="text-align:center;"><a href="index.php?action=remove&code=<?php echo $item["code"]; ?>" class="btnRemoveAction"><img src="icon-delete.png" alt="Remove Item" /></a></td>
				</tr>
				<?php
				$total_quantity += $item["quantity"];
				$total_price += ($item["price"]*$item["quantity"]);
		}
		?>

<tr>
<td colspan="2" align="right">Total:</td>
<td align="right"><?php echo $total_quantity; ?></td>
<td align="right" colspan="2"><strong><?php echo "₺ ".number_format($total_price, 2); ?></strong></td>
<td></td>
</tr>
</tbody>
</table>	
<div class="text-center">
	<!-- Button HTML (to Trigger Modal) -->
	<a href="#myModal" class="trigger-btn" data-toggle="modal">SİPARİŞ VER </a>
</div>

<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
							
				<h4 class="modal-title w-100">TEBRİKLER ! ALIŞVERİŞİNİZ TAMAMLANDI</h4>	
			</div>
			<div class="text-center">
			<img src="checks.png" class="rounded" width="350" height="350" alt="">

			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-block" data-dismiss="modal">Anasayfaya Dön</button>
			</div>
		</div>
	</div>
</div>     
  <?php
} else {
?>
<div class="no-records">Sepetiniz Boş</div>
<?php 
}
?>
</div>
<div id="enbabadiv11smli" class="row">
<div class="col-xs-11">
<div id="product-grid" class="headerarka3"> <div id="kat1"></div>
	<div style="height: 5rem; color:black;" class="display-4 txt-heading">SUPERMARKET</div>
	
	<div class="row">
		<div class="col-sm">
			<div class="row">
				<div class="col-sm">
					<div id="temelGida" class="text-black"><h2>Temel Gıda</h2></div>
					<?php
					$product_array = $db_handle->runQuery("SELECT * FROM tblproduct WHERE c_id=1 ORDER BY id ASC");
					if (!empty($product_array)) { 
						foreach($product_array as $key=>$value){
					?>
						<div class="product-item">
							<form class="" method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
							<div class="product-image liste"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
							<div class="product-tile-footer">
							<div class="product-title"><?php echo $product_array[$key]["name"]; ?></div>
							<div class="product-price"><?php echo "₺".$product_array[$key]["price"]; ?></div>
							<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" /><input type="submit" value="Sepete Ekle" class="btnAddAction" /></div>
							</div>
							</form>
						</div>
				
					
					<?php
						}
					}
					?>
				</div>				
			</div>
			<div class="row">
				<div class="col-sm">
					<div id="sarkuteri" class="text-black"><h2>Şarküteri</h2></div>
					<?php
					$product_array = $db_handle->runQuery("SELECT * FROM tblproduct WHERE c_id=2 ORDER BY id ASC");
					if (!empty($product_array)) { 
						foreach($product_array as $key=>$value){
					?>
					
						<div class="product-item">
							<form class="" method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
							<div class="product-image liste"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
							<div class="product-tile-footer">
							<div class="product-title"><?php echo $product_array[$key]["name"]; ?></div>
							<div class="product-price"><?php echo "₺".$product_array[$key]["price"]; ?></div>
							<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" /><input type="submit" value="Sepete Ekle" class="btnAddAction" /></div>
							</div>
							</form>
						</div>
				
					
					<?php
						}
					}
					?>
				</div>				
			</div>
			<div class="row">
				<div class="col-sm">
					<div id="manav" class="text-black"><h2></i>Manav</h2></div>
					<?php
					$product_array = $db_handle->runQuery("SELECT * FROM tblproduct WHERE c_id=3 ORDER BY id ASC");
					if (!empty($product_array)) { 
						foreach($product_array as $key=>$value){
					?>
						<div class="product-item">
							<form class="" method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
							<div class="product-image liste"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
							<div class="product-tile-footer">
							<div class="product-title"><?php echo $product_array[$key]["name"]; ?></div>
							<div class="product-price"><?php echo "₺".$product_array[$key]["price"]; ?></div>
							<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" /><input type="submit" value="Sepete Ekle" class="btnAddAction" /></div>
							</div>
							</form>
						</div>
				
					
					<?php
						}
					}
					?>
				</div>				
			</div>
			<div class="row">
				<div class="col-sm">
				<div id="temizlik" class="text-black"><h2> Temizlik</h2></div>
				<?php
				$product_array = $db_handle->runQuery("SELECT * FROM tblproduct WHERE c_id=4 ORDER BY id ASC");
				if (!empty($product_array)) { 
					foreach($product_array as $key=>$value){
				?>
					<div class="product-item">
						<form class="" method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
						<div class="product-image liste"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
						<div class="product-tile-footer">
						<div class="product-title"><?php echo $product_array[$key]["name"]; ?></div>
						<div class="product-price"><?php echo "₺".$product_array[$key]["price"]; ?></div>
						<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" /><input type="submit" value="Sepete Ekle" class="btnAddAction" /></div>
						</div>
						</form>
					</div>
			
				
				<?php
					}
				}
				?>
				</div>				
			</div>
			<div class="row">
				<div class="col-sm">
				<div id="elektronik" class="text-black"><h2>Elektronik</h2></div>
				<?php
				$product_array = $db_handle->runQuery("SELECT * FROM tblproduct WHERE c_id=5 ORDER BY id ASC");
				if (!empty($product_array)) { 
					foreach($product_array as $key=>$value){
				?>
					<div class="product-item">
						<form class="" method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
						<div class="product-image liste"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
						<div class="product-tile-footer">
						<div class="product-title"><?php echo $product_array[$key]["name"]; ?></div>
						<div class="product-price"><?php echo "₺".$product_array[$key]["price"]; ?></div>
						<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" /><input type="submit" value="Sepete Ekle" class="btnAddAction" /></div>
						</div>
						</form>
					</div>
			
				
				<?php
					}
				}
				?>
				</div>				
			</div>
			<div class="row">
				<div class="col-sm">
				<div id="balik" class="text-black"><h2>Balık</h2></div>
				<?php
				$product_array = $db_handle->runQuery("SELECT * FROM tblproduct WHERE c_id=6 ORDER BY id ASC");
				if (!empty($product_array)) { 
					foreach($product_array as $key=>$value){
				?>
					<div class="product-item">
						<form class="" method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
						<div class="product-image liste"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
						<div class="product-tile-footer">
						<div class="product-title"><?php echo $product_array[$key]["name"]; ?></div>
						<div class="product-price"><?php echo "₺".$product_array[$key]["price"]; ?></div>
						<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" /><input type="submit" value="Sepete Ekle" class="btnAddAction" /></div>
						</div>
						</form>
					</div>
			
				
				<?php
					}
				}
				?>
				</div>				
			</div>
			<div class="row">
				<div class="col-sm">
				<div id="evcildostlar" class="text-black"><h2>Evcil Dostlarımız</h2></div>
				<?php
				$product_array = $db_handle->runQuery("SELECT * FROM tblproduct WHERE c_id=7 ORDER BY id ASC");
				if (!empty($product_array)) { 
					foreach($product_array as $key=>$value){
				?>
					<div class="product-item">
						<form class="" method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
						<div class="product-image liste"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
						<div class="product-tile-footer">
						<div class="product-title"><?php echo $product_array[$key]["name"]; ?></div>
						<div class="product-price"><?php echo "₺".$product_array[$key]["price"]; ?></div>
						<div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" /><input type="submit" value="Sepete Ekle" class="btnAddAction" /></div>
						</div>
						</form>
					</div>
			
				
				<?php
					}
				}
				?>
				</div>				
			</div>
		</div>		
	</div>

</div></div>

</div>
</div>
<div class="col-xs-1"><div class=""> <div> <div> <div class="sidenav">

<!-- sidebardaki1.button -->

<button style="margin-top:0rem; padding-top:0rem;" class="yazifont" id="myBtn1">Sebze ve Meyve Nasıl Seçilir ?</button>
<div style="margin-top:2rem;" id="myModal1" class="modal">
  <div class="modal-content">
    <div class="modal1-header">
      <span class="close1">&times;</span>
      <h2 style="text-align:center;">Sağlıklı Tüketim İçin Nasıl Taze Ürün Seçilir?</h2>
    </div>
    <div class="modal1-body">
	<p style="color: black; font-size:0.8rem;">Sağlıklı beslenmek ve her besin grubundan yeterli miktarda almak, son günlerde çok daha önemli bir hale geldi. Çünkü vücudun direncini koruyabilmesi ve hastalıklara karşı bağışıklık geliştirebilmesi için farklı türden birçok yiyeceğe ihtiyacı var. 
	Yaz Sebze ve Meyvelerini Daha Sağlıklı Nasıl Tüketebiliriz?
Yaz mevsiminde yetişen birbirinden lezzetli, vitamin-mineral kaynağı sebze ve meyveleri sizinle paylaştık. Peki, bu meyve ve sebzeleri daha besleyici bir şekilde öğünlerimizde nasıl tüketebiliriz? 
Örneğin yoğurdun içine şeftali ya da kayısı dilimleyebilir ya da karpuz, kavun, çilek gibi meyvelerle serinletici smoothie tarifleri hazırlayabilirsiniz. Meyvelerin tatlı lezzeti, böylece tatlı isteğinizi kontrol ederken size yardımcı da olabilir. 
</p> <p style="color: black; font-size:0.8rem;">
1. ​Sebze ve Meyveleri Seçerken Dikkatli Olun
Dengeli beslenmek için gıdaları doğru seçmenin önemi çok büyük. Fakat burada demek istediğimiz meyve sebze seçiminde daha büyük daha iri ve parlak görünenleri değil; ezilmemiş diri meyve ve sebzeleri tercih etmeniz gerektiği. Böylelikle sulu, lezzetli meyve ve sebzelerin hem besin değerlerinden hem de tatlarından daha iyi bir şekilde yararlanabilirsiniz </p>
<p style="color: black; font-size:0.8rem;">2.Ara Öğünlerde Yaz Meyvelerini Tercih Edin 
Öğünlerin arasını açtığınızda çok fazla acıkıyorsanız ara öğün tüketmeye özen gösterebilirsiniz. Üstelik yaz mevsiminin sulu ve ferahlatıcı meyveleriyle lezzetli ve sağlıklı ara öğünler hazırlamak çok daha kolay oluyor.  </p>
<p style="color: black; font-size:0.8rem;">3. Meyveleri koklamaktan çekinmeyin: Ne kadar olgun olduğunu kokusu ele verir
armut-gorsel

Büyüklerimiz boşuna "Bu kavun değil ki koklayıp da alasın" dememişler. Konu meyve seçimiyse kokusu birçok şeyi anlamamızı sağlıyor çünkü. Bir meyvenin ne kadar olgun olduğunu anlayabilmek için altını koklamaktan çekinmeyin. Eğer iyi bir meyveyse güçlü bir koku yayacaktır.</p>
<p style="color: black; font-size:0.8rem;">4. Soğan seçiminde ise kokmamasına ve sert olmasına dikkat edin
kirmizi-sogan-aralik-2020

Soğanın sert bir kokuya sahip olması onun çoktan filizlendiğini işaret eder ve bu da soğanın daha az sıkı ve daha az çıtır çıtır olduğunu gösterir. Bu arada filizlenmiş soğan çok da kötü bir şey değil, hala yenebilir ancak özellikle salatalarda kötü bir görüntüye sebep olacağı kesin.</p>
<p style="color: black; font-size:0.8rem;">5. İyi erik yukarıdan yere bırakıldığında karpuz gibi çatlar
yesil-erik-subat-2021

7'den 70'e herkesin sevdiği bir meyve olan eriğin sert olanları tercih edilmeli. Bu erikler kaliteli ve lezzetli olanlardır. Yere attığınızda çatlıyorsa bilin ki o erik kaliteli ve olgunlaşmış olandır.</p><br>
<p style="text-align:right;">Afiyet Olsun...</p>
    </div>
  </div>
</div>

<h3 style="text-align:center; color:white; border-bottom: 1px solid white; border-top: 1px solid white;" class="yazifont">Biz Kimiz ?</h3>
<p  style="color:white; font-size: 0.8rem; border-bottom: 1px solid white; padding-left:3px; padding-right:3px;"> SanalMarket olarak senelerdir en iyi hizmeti ve ürünleri size ulaştırmaktan mutluluk duyarız. Bu kaliteyi size ulaştırdığımız her anın karşılığını gülümseyen yüzlerinizde görmek bizim için en iyi motivasyon kaynağı olmaya devam edecektir. </p>
<i style="padding-left: 2.9rem;" class="fas  fa-shipping-fast fa-4x"></i>
<h3 style="text-align:center; color:white;" class="yazifont" >KARGO BEDAVA</h3>

<i class="fas fa-phone fa-sm" style="color:white; padding-left:1rem; margin-bottom:	0.6rem;">+90 581 818 81 81</i>
<br>
<i class="fas fa-fax fa-sm" style="color:white; padding-left:1rem; margin-bottom: 0.6rem;">+44-208-1234567</i>
<br>
<i class="fas fa-map-marker-alt fa-sm" style="color:white; padding-left:1rem; margin-bottom:0.8rem;">T.C. Düzce Üniversitesi Ana Kampüs</i>
<p  style="color:white; font-size: 1rem; border-top: 1px solid white; text-align:center;">Sağlıkla ve Huzurla Kalın...</p>


  
</div></div>
  </div>

  <script>

//1. bu sidebar butonu Get the modal
var modal = document.getElementById("myModal1");
// Get the button that opens the modal
var btn = document.getElementById("myBtn1");
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close1")[0];
// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</BODY>
</HTML>