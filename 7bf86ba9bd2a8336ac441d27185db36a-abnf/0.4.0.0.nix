{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "abnf";
        version = "0.4.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "mz.bremerhaven@gmail.com";
      author = "Xandaros";
      homepage = "https://github.com/Xandaros/abnf.git";
      url = "";
      synopsis = "Parse ABNF and generate parsers for the specified document";
      description = "You can use this library to parse an ABNF document and\ngenerate a parser from that ABNF to read a document\ndescribed by the ABNF.";
      buildType = "Simple";
    };
    components = {
      "abnf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.megaparsec)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.megaparsec)
            (hsPkgs.attoparsec)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.abnf)
          ];
        };
      };
    };
  }