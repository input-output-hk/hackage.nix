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
      specVersion = "1.10";
      identifier = { name = "clist"; version = "0.3.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/clist.hs";
      url = "";
      synopsis = "Counted list";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."peano" or (errorHandler.buildDepError "peano"))
          (hsPkgs."natural-induction" or (errorHandler.buildDepError "natural-induction"))
        ];
        buildable = true;
      };
    };
  }