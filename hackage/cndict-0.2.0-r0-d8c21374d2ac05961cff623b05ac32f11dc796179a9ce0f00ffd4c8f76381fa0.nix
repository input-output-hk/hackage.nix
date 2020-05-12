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
      specVersion = "1.8";
      identifier = { name = "cndict"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "Lemmih <lemmih@gmail.com>";
      homepage = "https://github.com/Lemmih/cndict";
      url = "";
      synopsis = "Chinese/Mandarin <-> English dictionary, Chinese lexer.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          ];
        buildable = true;
        };
      };
    }