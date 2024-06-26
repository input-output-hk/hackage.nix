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
      identifier = { name = "coordinate"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2016 NICTA Limited\nCopyright (c) 2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/coordinate";
      url = "";
      synopsis = "A representation of latitude and longitude";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nA representation of latitude and longitude";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."papa" or (errorHandler.buildDepError "papa"))
        ];
        buildable = true;
      };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."coordinate" or (errorHandler.buildDepError "coordinate"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          buildable = true;
        };
      };
    };
  }