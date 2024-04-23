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
      specVersion = "1.0";
      identifier = { name = "wl-pprint"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stefanor@cox.net";
      author = "Daan Leijen";
      homepage = "";
      url = "";
      synopsis = "The Wadler/Leijen Pretty Printer";
      description = "This is a pretty printing library based on Wadler's paper \"A Prettier\nPrinter\".  See the haddocks for full info.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }