<?php 

use yii\helpers\Url;


$this->title= 'MEMBER PAGE';
$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@frontend/views/myasset');
?>



<div class="block-content">

		<div class="container">
			<div class="row">
				<div class="col">
					<h2 class="section_title text-center">WELCOME TO JMSC</h2>
				</div>

			</div>
			<br />
			<div class="row">
			
			<div class="col-lg-12"><p>The Journal of Management & Supply Chain is a peer-reviewed academic journal that publishes high-quality research articles related to the fields of management and supply chain. The journal focuses on both theoretical and practical research, with an emphasis on empirical studies that contribute to the understanding of management and supply chain issues. The scope of the journal includes topics such as supply chain management, operations management, logistics, transportation, procurement, inventory management, sustainability, and innovation in management and supply chain practices. The journal welcomes original research articles, literature reviews, case studies, and conceptual papers that offer new insights and perspectives on management and supply chain issues. The target audience of the journal includes academics, researchers, practitioners, and students who are interested in advancing the knowledge and practice of management and supply chain.</p></div>
				
				<br />
				
				
				
			
			</div>
			<br />
			
			<div class="form-group" align="center"><a href="<?=Url::to(['submission/create'])?>" class="btn btn-primary">SUBMIT NEW MANUSCRIPT</a> </div>

		</div>
	</div>
	
<br /><br /><br />