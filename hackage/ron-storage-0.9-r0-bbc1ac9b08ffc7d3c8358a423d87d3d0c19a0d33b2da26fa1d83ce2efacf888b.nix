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
      identifier = { name = "ron-storage"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Yuriy Syrovetskiy";
      maintainer = "Yuriy Syrovetskiy <haskell@cblp.su>";
      author = "";
      homepage = "https://github.com/ff-notes/ron";
      url = "";
      synopsis = "RON Storage";
      description = "Replicated Object Notation (RON), data types (RDT), and RON-Schema\n\nExamples: https://github.com/ff-notes/ron/tree/master/examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ron" or (errorHandler.buildDepError "ron"))
          (hsPkgs."ron-rdt" or (errorHandler.buildDepError "ron-rdt"))
          ];
        buildable = true;
        };
      };
    }