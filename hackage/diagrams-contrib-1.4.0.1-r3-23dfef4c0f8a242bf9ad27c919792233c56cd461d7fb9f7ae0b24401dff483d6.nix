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
        name = "diagrams-contrib";
        version = "1.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Various; see individual modules";
      author = "Various";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Collection of user contributions to diagrams EDSL";
      description = "A collection of user contributions for diagrams,\nan embedded domain-specific language for generation\nof vector graphics.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.colour)
          (hsPkgs.split)
          (hsPkgs.monoid-extras)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-solve)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.force-layout)
          (hsPkgs.data-default)
          (hsPkgs.MonadRandom)
          (hsPkgs.random)
          (hsPkgs.circle-packing)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.data-default-class)
          (hsPkgs.semigroups)
          (hsPkgs.cubicbezier)
          (hsPkgs.hashable)
          (hsPkgs.mfsolve)
        ];
      };
      tests = {
        "turtle-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.diagrams-lib)
          ];
        };
      };
    };
  }