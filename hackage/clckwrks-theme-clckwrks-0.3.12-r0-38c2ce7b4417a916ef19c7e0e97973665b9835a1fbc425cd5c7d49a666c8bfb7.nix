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
      identifier = { name = "clckwrks-theme-clckwrks"; version = "0.3.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsx2hs.components.exes.hsx2hs or (pkgs.pkgsBuildBuild.hsx2hs or (errorHandler.buildToolDepError "hsx2hs:hsx2hs")))
        ];
        buildable = true;
      };
    };
  }