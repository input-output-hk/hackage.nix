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
      identifier = { name = "numeric-tools"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://bitbucket.org/Shimuuar/numeric-tools";
      url = "";
      synopsis = "Collection of numerical tools for integration, differentiation etc.";
      description = "Package provides function to perform numeric integration and\ndifferentiation, function interpolation.\n\nChanges in 0.1.0.1\n\n* Fixed bug in quadRomberg which caused crash if algorithm fails to\nconverge";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }