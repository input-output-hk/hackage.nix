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
      specVersion = "2.2";
      identifier = { name = "primitive-unaligned"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>";
      author = "Andrew Martin";
      homepage = "https://github.com/haskell-primitive/primitive-unaligned";
      url = "";
      synopsis = "Unaligned access to primitive arrays";
      description = "Unaligned access to primitive arrays. The offsets are given in bytes rather than elements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive-unaligned" or (errorHandler.buildDepError "primitive-unaligned"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }