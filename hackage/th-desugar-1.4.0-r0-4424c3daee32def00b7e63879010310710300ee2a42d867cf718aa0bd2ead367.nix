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
        name = "th-desugar";
        version = "1.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "http://www.cis.upenn.edu/~eir/packages/th-desugar";
      url = "";
      synopsis = "Functions to desugar Template Haskell";
      description = "This package provides the Language.Haskell.TH.Desugar module, which desugars\nTemplate Haskell's rich encoding of Haskell syntax into a simpler encoding.\nThis desugaring discards surface syntax information (such as the use of infix\noperators) but retains the original meaning of the TH code. The intended use\nof this package is as a preprocessor for more advanced code manipulation\ntools. Note that the input to any of the ds... functions should be produced\nfrom a TH quote, using the syntax [| ... |]. If the input to these functions\nis a hand-coded TH syntax tree, the results may be unpredictable. In\nparticular, it is likely that promoted datatypes will not work as expected.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.syb)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.syb)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }