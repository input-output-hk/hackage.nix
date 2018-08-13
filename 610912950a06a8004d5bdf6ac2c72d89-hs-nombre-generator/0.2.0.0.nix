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
      specVersion = "1.8";
      identifier = {
        name = "hs-nombre-generator";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "(c) Ezequiel Alvarez 2014";
      maintainer = "welcometothechango@gmail.com";
      author = "Ezequiel Alvarez";
      homepage = "";
      url = "";
      synopsis = "Name generator.";
      description = "Random name generator with web scrapping.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hs-nombre-generator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hxt)
            (hsPkgs.HandsomeSoup)
            (hsPkgs.random)
          ];
        };
      };
    };
  }