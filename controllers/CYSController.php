<?php
  class CYSController extends Controller{
    protected $template = "template1";

    public function index(){
      $dados = array();
      $modelTempo = new Tempo();
      $tempos = $modelTempo->read();
      $dados['tempos'] = $tempos;
      $this->view("index", $dados);
    }
    public function descricao(){
      $dados = array();
      $modelTempo = new Tempo();
      $tempos = $modelTempo->read();
      $dados['tempos'] = $tempos;

      require_once 'views/menunav.php';
    }
    public function tempo($id){
      $modelMusica = new Musica();
      $modelTempo = new Tempo();
      $tempos = $modelTempo->read();
      $musicas = $modelMusica->getByTempo($id);

      $modelTempo = new Tempo();
      $tempo = $modelTempo->getById($id);

//      require_once 'views/menunav.php';
      $this->view("menunav", compact('tempos', 'tempo', 'musicas'));

    }
    public function questionario($id){
      $modelTempo = new Tempo();
      $modelmusica = new Musica();
      $tempos = $modelTempo->read();
      $musica = $modelmusica -> getById($id);

      $modelTempo = new Tempo();

      $modelQuestionario = new Questionario();
      $questionarios = $modelQuestionario->getByMusica($musica['id']);
      $tempo = $modelTempo->getById($musica['id_tempo']);

//      require_once 'views/questionario.php';
      $this->view("questionario", compact('tempos', 'tempo', 'musica', 'questionarios'));

    }
  }
 ?>
