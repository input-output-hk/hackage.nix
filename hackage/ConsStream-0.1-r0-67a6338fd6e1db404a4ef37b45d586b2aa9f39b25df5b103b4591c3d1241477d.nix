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
      identifier = { name = "ConsStream"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "github";
      url = "";
      synopsis = "Trivial re-export of Wouter Swierstra's Stream package,\navoiding module name clash.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
          ];
        buildable = true;
        };
      };
    }