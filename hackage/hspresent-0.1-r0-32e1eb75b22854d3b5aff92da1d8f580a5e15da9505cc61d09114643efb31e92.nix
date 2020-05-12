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
      identifier = { name = "hspresent"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Evan Klitzke";
      maintainer = "Evan Klitzke <evan@eklitzke.org>";
      author = "Evan Klitzke";
      homepage = "";
      url = "";
      synopsis = "A terminal presentation tool";
      description = "Give fancy presentations in your terminal.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = { "hspresent" = { buildable = true; }; };
      };
    }