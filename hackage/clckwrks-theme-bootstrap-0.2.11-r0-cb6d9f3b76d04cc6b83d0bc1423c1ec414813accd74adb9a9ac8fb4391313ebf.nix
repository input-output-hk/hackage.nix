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
      identifier = { name = "clckwrks-theme-bootstrap"; version = "0.2.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "simple bootstrap based template for clckwrks";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clckwrks" or (errorHandler.buildDepError "clckwrks"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or (errorHandler.buildToolDepError "hsx2hs")))
          ];
        buildable = true;
        };
      };
    }