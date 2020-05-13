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
      identifier = { name = "notzero"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 NICTA Limited\nCopyright (C) 2016-2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      homepage = "https://github.com/qfpl/notzero";
      url = "";
      synopsis = "A data type for representing numeric values, except zero.";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nA data type for representing numeric values, except zero. This might be useful in working with process exit codes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }