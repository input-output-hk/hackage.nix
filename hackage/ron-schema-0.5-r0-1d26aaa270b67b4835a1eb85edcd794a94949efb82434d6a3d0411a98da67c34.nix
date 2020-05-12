{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ron-schema"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Yuriy Syrovetskiy";
      maintainer = "Yuriy Syrovetskiy <haskell@cblp.su>";
      author = "";
      homepage = "https://github.com/ff-notes/ron";
      url = "";
      synopsis = "RON-Schema";
      description = "Replicated Object Notation (RON), data types (RDT), and RON-Schema\n\nTypical usage:\n\n> import RON.Data\n> import RON.Schema.TH\n> import RON.Storage.IO as Storage\n>\n> [mkReplicated|\n>     (struct_lww Note\n>         active Boole\n>         text RgaString)\n> |]\n>\n> instance Collection Note where\n>     collectionName = \"note\"\n>\n> main :: IO ()\n> main = do\n>     let dataDir = \"./data/\"\n>     h <- Storage.newHandle dataDir\n>     runStorage h \$ do\n>         obj <- newObject\n>             Note{active = True, text = \"Write a task manager\"}\n>         createDocument obj";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hedn" or (errorHandler.buildDepError "hedn"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ron" or (errorHandler.buildDepError "ron"))
          (hsPkgs."ron-rdt" or (errorHandler.buildDepError "ron-rdt"))
          ];
        buildable = true;
        };
      };
    }