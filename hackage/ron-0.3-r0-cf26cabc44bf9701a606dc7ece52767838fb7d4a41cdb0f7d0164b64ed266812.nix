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
      identifier = { name = "ron"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Yuriy Syrovetskiy";
      maintainer = "Yuriy Syrovetskiy <haskell@cblp.su>";
      author = "";
      homepage = "https://github.com/ff-notes/ron";
      url = "";
      synopsis = "RON, RON-RDT, and RON-Schema";
      description = "Replicated Object Notation (RON), data types (RDT), and RON-Schema\n\nTypical usage:\n\n> import RON.Data\n> import RON.Schema.TH\n> import RON.Storage.IO as Storage\n>\n> $(let note = StructLww \"Note\"\n>           [ (\"active\", field boole)\n>           , (\"text\",   field rgaString) ]\n>           def{saHaskellDeriving = [\"Eq\", \"Show\"]}\n>   in mkReplicated [DStructLww note])\n>\n> instance Collection Note where\n>     collectionName = \"note\"\n>\n> main :: IO ()\n> main = do\n>     let dataDir = \"./data/\"\n>     h <- Storage.newHandle dataDir\n>     runStorage h $ do\n>         obj <- newObject\n>             Note{active = True, text = \"Выступить на FProg SPb\"}\n>         createDocument obj";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hedn" or (errorHandler.buildDepError "hedn"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ron" or (errorHandler.buildDepError "ron"))
            ];
          buildable = true;
          };
        };
      };
    }