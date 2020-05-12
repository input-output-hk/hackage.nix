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
      identifier = { name = "hpaco-lib"; version = "0.22.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/hpaco";
      url = "";
      synopsis = "Modular template compiler library";
      description = "Template compiler library, compiles template code into\nPHP or Javascript, or interprets it directly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ];
        buildable = true;
        };
      };
    }