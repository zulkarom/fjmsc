<?php 

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;



$this->title= 'JMSC :: JOURNAL OF MANAGEMENT AND SUPPLY CHAIN';

$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@frontend/views/myasset');
?>
	<!-- Home -->

<div style="padding-top:25px; padding-bottom:5px; background-color:#f8f8f8">
	<div class="container">
		<div class="form-group">
		
		
		
		
		<?php $form = ActiveForm::begin([
        'action' => ['search/index'],
        'method' => 'get',
    ]); ?>
		<div class="row">
		
			<div class="col-md-8">
			<div class="form-group">
			
			 <?= $form->field($model, 'search_article')->textInput(['class' => 'form-control', 'style' => 'height:45px', 'placeholder' => 'Search articles in title, abstract or keywords...'])->label(false); ?>
			 
			</div>
			</div>
			<div class="col-md-4">
			<div class="form-group">
			
			
		
			
			 <?= Html::submitButton('<i class="fa fa-search"></i> Search', ['class' => 'btn btn-primary', 'style' => 'height:40px']) ?>  <?= Html::a('Submit a paper', ['/page/submission-guideline'], ['class' => 'btn btn-danger', 'style' => 'height:40px']) ?>
			
			
			</div>
			</div>
		</div>
		 <?php ActiveForm::end(); ?>
</div>
	</div>
	
</div>


	<div class="courses">
		<div class="container">
		
			<div class="row">
			
			<div class="col-lg-2">
			<div class="form-group">
<img src="<?=$directoryAsset?>/img/cover-page.jpg" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" />
			</div>
		<?php
if ($journal) {
    ?>
			<div align="center"><h4>Current Issue</h4>
			
<p><?=$journal->journalName?> <?=$journal->journal_name?></p>
</div>
	<?php } ?>		
			</div>
			
			<div class="col-lg-5">
			<h3>AIM OF JOURNAL</h3>
			
			<p style="text-align:justify">The Journal of Management & Supply Chain is a peer-reviewed academic journal that publishes high-quality research articles related to the fields of management and supply chain. The journal focuses on both theoretical and practical research, with an emphasis on empirical studies that contribute to the understanding of management and supply chain issues. The scope of the journal includes topics such as supply chain management, operations management, logistics, transportation, procurement, inventory management, sustainability, and innovation in management and supply chain practices. The journal welcomes original research articles, literature reviews, case studies, and conceptual papers that offer new insights and perspectives on management and supply chain issues. The target audience of the journal includes academics, researchers, practitioners, and students who are interested in advancing the knowledge and practice of management and supply chain.</p></div>
				
				<div class="col-lg-4">
					<br />
				<h3>SCOPE</h3>
				<p>JMSC welcomes and publishes research in the field of :
<ul>
<li>Business Management;</li>
<li>Logistics and distributive trade;</li>
<li>Finance and accounting;</li>
<li>Business sustainability;</li>
<li>Entrepreneurship & economic growth;</li>
<li>Entrepreneurship development programme & policy;</li>
<li>Social entrepreneurship; </li>
<li>and Human capital and entrepreneurship.</li>
</ul>

</p>

	<p>This journal is abstracted and indexed by Google Scholar .</p>				
				</div>
			
			</div>
<br />
	
<div class="row">
<div class="col-md-9">
<h4></h4>

<a href="https://www.asean-cites.org/" target="_blank"><img src="<?=$directoryAsset?>/img/aci-logo-v4.png" width="180" /></a> 

<a href="https://www.ebsco.com/" target="_blank"><img src="<?=$directoryAsset?>/img/ebsco.gif" width="130" /></a> 

<a href="http://ulrichsweb.serialssolutions.com" target="_blank"><img src="<?=$directoryAsset?>/img/ulrichs.gif" width="180" /></a> 

<a href="http://www.udledge.com/" target="_blank"><img src="<?=$directoryAsset?>/img/udl.png" width="150" /></a> 

<br />
<a href="https://scholar.google.com.my/" target="_blank"><img src="<?=$directoryAsset?>/img/google_scholar.jpg" /></a> 
<a href="http://mycc.my/" target="_blank"><img src="<?=$directoryAsset?>/img/mcc.jpg" width="180" /></a> 

<a href="http://www.mycite.my/" target="_blank"><img src="<?=$directoryAsset?>/img/mycite.gif" /></a> 

<a href="https://theadl.com/journal.php?search=Journal%20of%20Entrepreneurship%20and%20Business" target="_blank"><img src="<?=$directoryAsset?>/img/adl.png" /></a> 


</div>
<div class="col-md-3">
<h4>MEMBERSHIP</h4>
<a href="https://www.crossref.org/" target="_blank"><img src="<?=$directoryAsset?>/img/crossref.jpg" width="180" /></a>
<br /><br />
<h4>PLAGIARISM CHECK</h4>
<a href="https://www.turnitin.com/" target="_blank"><img src="<?=$directoryAsset?>/img/turnitin.jpg" /></a>

</div>
</div>
			
<br /><br />	

<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">

<div align="center"><a href="https://creativecommons.org/licenses/" target="_blank">
<img src="<?=$directoryAsset?>/img/88x31.png" /></a>
</div>
This work is licensed under a <a href="https://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons Attribution 3.0 Unported License</a>
</div>

</div>
			
			
		</div>
	</div>
	
	<div class="register" style="padding-bottom:10px;padding-top:50px">
		<div class="container">
		
		<div class="row">
				<div class="col">
					<h2 class="section_title text-center">CURRENT ISSUE</h2>
				</div>
		</div>
		
		<br />
			<?php 
			
			
			
			if($journal){
				echo $this->render('_list_articles', [
						'journal' => $journal,
				]);
			}else{
				echo 'In progress';
			}
			?>
		
		</div>
			

		</div>
	</div>
	
