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
      identifier = { name = "delimiter-separated"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atze@uu.nl";
      author = "atze@uu.nl";
      homepage = "https://github.com/atzedijkstra/delimiter-separated";
      url = "";
      synopsis = "Library for dealing with tab and/or comma (or other) separated files";
      description = "Delimeter separated file handling";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uhc-util" or (errorHandler.buildDepError "uhc-util"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          ];
        buildable = true;
        };
      };
    }