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
      identifier = { name = "clckwrks-theme-bootstrap"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "simple bootstrap based template for clckwrks";
      description = "A simple bootstrap based theme for clckwrks.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clckwrks" or (errorHandler.buildDepError "clckwrks"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."happstack-authenticate" or (errorHandler.buildDepError "happstack-authenticate"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."hsx-jmacro" or (errorHandler.buildDepError "hsx-jmacro"))
          (hsPkgs."hsx2hs" or (errorHandler.buildDepError "hsx2hs"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."web-plugins" or (errorHandler.buildDepError "web-plugins"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs.components.exes.hsx2hs or (pkgs.buildPackages.hsx2hs or (errorHandler.buildToolDepError "hsx2hs:hsx2hs")))
          ];
        buildable = true;
        };
      };
    }