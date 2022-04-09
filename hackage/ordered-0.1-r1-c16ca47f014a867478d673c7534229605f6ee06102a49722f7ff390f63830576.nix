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
      specVersion = "1.6";
      identifier = { name = "ordered"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "miguel.pagano@gmail.org";
      author = "Nick Bowler, Miguel Pagano";
      homepage = "";
      url = "";
      synopsis = "A definition of Posets.";
      description = "A library defining the notion of Poset.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }