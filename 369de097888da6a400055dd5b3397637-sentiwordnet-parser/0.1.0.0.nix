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
        name = "sentiwordnet-parser";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/sentiwordnet-parser#readme";
      url = "";
      synopsis = "Parser for the SentiWordNet tab-separated file";
      description = "Parser for the SentiWordNet tab-separated file";
      buildType = "Simple";
    };
    components = {
      "sentiwordnet-parser" = {
        depends  = [
          (hsPkgs.Decimal)
          (hsPkgs.base)
          (hsPkgs.parsers)
          (hsPkgs.safe)
          (hsPkgs.string-class)
          (hsPkgs.text)
          (hsPkgs.trifecta)
          (hsPkgs.vector)
        ];
      };
    };
  }