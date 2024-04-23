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
      identifier = { name = "redesigned-carnival"; version = "1.0.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "";
      url = "";
      synopsis = "Package for dependency confusion";
      description = "Dependency confusion is a software supply chain attack\ndescribed at <https://medium.com/@alex.birsan/dependency-confusion-4a5d60fec610>.\nThis package was created to investigate whether Cabal is vulnerable\nto this kind of attack, and possible mitigations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }