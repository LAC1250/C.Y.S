<?php
  class Questionario extends Model{
    protected $tabela = "questionario";
    protected $query = "SELECT questionario.*, musicas.titulo as titulo_musica from questionario left join musicas on questionario.id_musica = musicas.id order by id;";
    protected $ordem = "id";

    function Questionbyid($id_musica){
      $sql = "SELECT * from questionario where id_musica =:id_musica";
      $sentenca = $this->conexao->prepare($sql);
      $sentenca->bindParam(":id_musica",$id_musica);
      $sentenca->execute();
      $sentenca->setFetchMode(PDO::FETCH_ASSOC);
      $dados = $sentenca->fetchAll();
      return $dados;
    }
    function getByMusica($id_musica){
      $sql = "SELECT ROW_NUMBER () OVER (ORDER BY questionario.id) AS id, pergunta, opcaoa AS opcaoA, opcaob AS opcaoB, opcaoc AS opcaoC, resposta AS opcaoCerta FROM questionario WHERE id_musica =:id_musica";
      $sentenca = $this->conexao->prepare($sql);
      $sentenca->bindParam(":id_musica",$id_musica);
      $sentenca->execute();
      //$sentenca->setFetchMode(PDO::FETCH_CLASS);
      $dados = $sentenca->fetchAll(PDO::FETCH_OBJ);
      return $dados;
    }

    function Questions(){
      $modelQuestionario = new Questionario();
      $questionarios = $this->read();
      foreach ($questionarios as $questionario) {
        $questionario['id_musica'] = $modelQuestionario->Questionbyid($questionario['id_musica']);
      }
      return $questionarios;
    }
  }

 ?>
