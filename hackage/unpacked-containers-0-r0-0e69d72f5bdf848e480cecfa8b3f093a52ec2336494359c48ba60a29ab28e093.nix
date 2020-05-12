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
      specVersion = "2.0";
      identifier = { name = "unpacked-containers"; version = "0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2017-2018 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/unpacked-containers/";
      url = "";
      synopsis = "Unpacked containers via backpack";
      description = "This backpack mixin package supplies unpacked sets and maps exploiting backpack's ability to unpack through signatures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."utils" or (errorHandler.buildDepError "utils"))
          ];
        buildable = true;
        };
      sublibs = {
        "utils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      exes = {
        "unpacked-set-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unpacked-containers" or (errorHandler.buildDepError "unpacked-containers"))
            (hsPkgs."example" or (errorHandler.buildDepError "example"))
            ];
          buildable = true;
          };
        };
      };
    }