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
        name = "typerbole";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Fionan Haralddottir";
      maintainer = "ma302fh@gold.ac.uk";
      author = "Fionan Haralddottir";
      homepage = "";
      url = "";
      synopsis = "A typeystems library with exaggerated claims";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.either)
          (hsPkgs.semigroups)
          (hsPkgs.bifunctors)
          (hsPkgs.fgl)
          (hsPkgs.QuickCheck)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.generic-random)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.megaparsec)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "typerbole-diagrams" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            (hsPkgs.colour)
          ];
        };
      };
      tests = {
        "typerbole-testing" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.checkers)
            (hsPkgs.typerbole)
            (hsPkgs.containers)
            (hsPkgs.bifunctors)
            (hsPkgs.either)
            (hsPkgs.semigroups)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }