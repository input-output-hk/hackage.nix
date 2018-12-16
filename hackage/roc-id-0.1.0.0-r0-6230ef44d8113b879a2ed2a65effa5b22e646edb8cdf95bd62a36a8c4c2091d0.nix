{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "roc-id";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "https://github.com/jonathanknowles/roc-id#readme";
      url = "";
      synopsis = "Implementation of the ROC National ID standard.";
      description = "This package provides an implementation of the ROC National Identification\nNumber (中華民國身分證號碼) standard.\n\nIn particular, it provides functions for parsing and validating identification\nnumbers from textual input.\n\nSee the \"ROC.ID\" module to get started.\n\nFor more details of the standard on which this package is based, see:\n\n* https://zh.wikipedia.org/wiki/中華民國國民身分證\n* https://en.wikipedia.org/wiki/National_Identification_Card_(Republic_of_China)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.Only)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector-sized)
        ];
      };
      tests = {
        "roc-id-test" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.Only)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.generic-arbitrary)
            (hsPkgs.hspec)
            (hsPkgs.roc-id)
            (hsPkgs.text)
            (hsPkgs.vector-sized)
          ];
        };
      };
    };
  }