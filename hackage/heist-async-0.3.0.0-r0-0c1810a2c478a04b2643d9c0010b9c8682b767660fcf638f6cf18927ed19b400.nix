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
      specVersion = "1.2";
      identifier = { name = "heist-async"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@riseup.net";
      author = "Daniel Patterson";
      homepage = "http://github.com/dbp/heist-async";
      url = "";
      synopsis = "Adding support for asynchronous updates (\"AJAX\") with heist";
      description = "This package provides six splices and some accompanying javascript to allow declarative ajax programming that involves no javascript programming.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }