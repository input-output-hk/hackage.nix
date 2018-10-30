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
        name = "qc-oi-testgenerator";
        version = "1.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@tobias.goedderz.info";
      author = "Tobias Gödderz";
      homepage = "http://www.iai.uni-bonn.de/~jv/GV14.html";
      url = "";
      synopsis = "Compile time generation of operation invariance tests for QuickCheck";
      description = "This package generates operation invariance tests for QuickCheck from\nequation-based, QuickCheck-like properties at compile time. It\nimplements the approach from the paper \\\"Automatic Testing of Operation\nInvariance\\\" presented at WFLP'14. The paper can be downloaded at\n<http://www.iai.uni-bonn.de/~jv/GV14.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.QuickCheck)
          (hsPkgs.fclabels)
        ];
      };
    };
  }