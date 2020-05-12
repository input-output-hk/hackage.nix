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
      identifier = { name = "xml-monad"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010 Aristid Breitkreuz";
      maintainer = "aristidb@googlemail.com";
      author = "Aristid Breitkreuz";
      homepage = "";
      url = "";
      synopsis = "Monadic extensions to the xml package.";
      description = "A monadic interface for xml based on monadLib and monadLib-compose. It provides filter composition, similar to hxt, and a succinct\nmonadic interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."monadLib-compose" or (errorHandler.buildDepError "monadLib-compose"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }