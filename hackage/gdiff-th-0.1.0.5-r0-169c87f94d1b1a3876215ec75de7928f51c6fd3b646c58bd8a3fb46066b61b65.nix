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
      identifier = { name = "gdiff-th"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Jonathan Fischoff           ";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff            ";
      homepage = "https://github.com/jfischoff/gdiff-th";
      url = "";
      synopsis = "Generate gdiff GADTs and Instances.";
      description = "Generate gdiff GADTs and Instances.\n\nThere are examples in the @examples@ directory of the cabal tarball. Also the main module includes an example in the documentation.\n\n* 0.1.0.4 : Builds on GHC 7.6.1, 7.4.2, and 7.0.3\n* 0.1.0.5 : Doc fixes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gdiff" or (errorHandler.buildDepError "gdiff"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."gdiff" or (errorHandler.buildDepError "gdiff"))
            (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }