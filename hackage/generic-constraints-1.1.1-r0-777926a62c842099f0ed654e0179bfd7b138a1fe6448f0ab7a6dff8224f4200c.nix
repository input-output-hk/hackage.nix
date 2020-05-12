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
      identifier = { name = "generic-constraints"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Sjoerd Visscher, Xia Li-yao, Yair Chuchem";
      homepage = "https://github.com/yairchu/generic-constraints";
      url = "";
      synopsis = "Constraints via Generic";
      description = "Write short and concise contexts based on generics";
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."generic-constraints" or (errorHandler.buildDepError "generic-constraints"))
            ];
          buildable = true;
          };
        };
      };
    }