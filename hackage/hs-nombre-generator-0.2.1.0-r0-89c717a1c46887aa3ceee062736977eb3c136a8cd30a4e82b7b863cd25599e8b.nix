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
      specVersion = "1.8";
      identifier = {
        name = "hs-nombre-generator";
        version = "0.2.1.0";
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.hxt)
            (hsPkgs.HandsomeSoup)
            (hsPkgs.random)
          ];
        };
      };
    };
  }