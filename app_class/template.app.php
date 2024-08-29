<?php

require 'vendor/autoload.php';

use Smarty\Smarty;

$smarty = new Smarty();


class My_App extends Smarty {

   public function __construct()
   {
        parent::__construct();

        $this->setTemplateDir('templates/');
        $this->setCompileDir('templates_c/');
        $this->setConfigDir('cache/');
        $this->setCacheDir('configs/');
        
        $this->setEscapeHtml(true);

        $this->caching = Smarty::CACHING_LIFETIME_CURRENT;

        $this->assign('app_name', 'YipStore');

   }

}

?>