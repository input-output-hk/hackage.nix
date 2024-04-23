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
      identifier = { name = "inquire"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sp@orbitalfox.com";
      author = "Stavros Polymenis";
      homepage = "";
      url = "";
      synopsis = "Console client for encyclopedias";
      description = "A console (text/terminal) based client for online\nencyclopedias such as Wikipedia.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "inquire" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aether" or (errorHandler.buildDepError "aether"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }