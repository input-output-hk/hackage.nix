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
      specVersion = "1.10";
      identifier = { name = "radian"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 NICTA Limited\nCopyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.\nCopyright (C) 2020-2021 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/system-f/radian";
      url = "";
      synopsis = "Isomorphisms for measurements that use radians.";
      description = "<<https://system-f.gitlab.io/logo/systemf-450x450.jpg>>\n\nIsomorphisms for measurements that use radians.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."radian" or (errorHandler.buildDepError "radian"))
            ];
          buildable = true;
          };
        };
      };
    }