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
      identifier = { name = "validation"; version = "1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2013 Tony Morris, Nick Partridge\nCopyright (C) 2014,2015 NICTA Limited\nCopyright (c) 2016-2019 Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230\nCopyright (c) 2019-2026 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      homepage = "https://github.com/system-f/validation";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "<<https://logo.systemf.com.au/systemf-450x450.png>>\n\nA data-type like Either but with differing properties and type-class\ninstances.\n\nLibrary support is provided for this different representation, include\n`lens`-related functions for converting between each and abstracting over their\nsimilarities.\n\n* `Validation`\n\nThe `Validation` data type is isomorphic to `Either`, but has an instance\nof `Applicative` that accumulates on the error side. That is to say, if two\n(or more) errors are encountered, they are appended using a `Semigroup`\noperation.\n\nAs a consequence of this `Applicative` instance, there is no corresponding\n`Bind` or `Monad` instance. `Validation` is an example of, \"An applicative\nfunctor that is not a monad.\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          ];
          buildable = true;
        };
        "hunit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          ];
          buildable = true;
        };
      };
    };
  }