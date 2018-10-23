{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "uniprot-kb";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Pavel Yakovlev";
      maintainer = "pavel@yakovlev.me";
      author = "Pavel Yakovlev";
      homepage = "https://github.com/biocad/uniprot-kb#readme";
      url = "";
      synopsis = "UniProt-KB format parser";
      description = "Specification implementation of https://web.expasy.org/docs/userman.html";
      buildType = "Simple";
    };
    components = {
      "uniprot-kb" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "uniprot-kb-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.neat-interpolation)
            (hsPkgs.text)
            (hsPkgs.uniprot-kb)
          ];
        };
      };
    };
  }