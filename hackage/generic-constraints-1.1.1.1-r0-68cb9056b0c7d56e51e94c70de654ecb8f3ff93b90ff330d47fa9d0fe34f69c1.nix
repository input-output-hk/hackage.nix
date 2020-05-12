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
      specVersion = "1.12";
      identifier = { name = "generic-constraints"; version = "1.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Sjoerd Visscher,\nXia Li-yao,\nYair Chuchem";
      homepage = "https://github.com/yairchu/generic-constraints";
      url = "";
      synopsis = "Constraints via Generic";
      description = "Standalone deriving without boiler-plate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          ];
        buildable = true;
        };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-constraints" or (errorHandler.buildDepError "generic-constraints"))
            ];
          buildable = true;
          };
        };
      };
    }