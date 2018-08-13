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
        name = "multext-east-msd";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.snajder@fer.hr";
      author = "Jan Snajder";
      homepage = "http://github.com/jsnajder/multex-east-msd";
      url = "";
      synopsis = "MULTEXT-East morphosyntactic descriptors";
      description = "Implementation of the MULTEXT-East Version 3 morphosyntactic descriptors.\nMULTEXT-East encodes values of morphosyntatic attributes in a single string,\nusing positional encoding. Each attribute is represented by a single letter\nat a predefined position, while non-applicable attributes are represented\nby hyphens. MULTEXT-EAST Version 3 covers morphosyntactic descriptions for\nBulgarian, Croatian, Czech, English, Estonian, Hungarian, Lithuanian,\nMacedonian, Persian, Polish, Resian, Romanian, Russian, Serbian, Slovak,\nSlovene, and Ukrainian. For details, refer to http://nl.ijs.si/ME/V3/";
      buildType = "Simple";
    };
    components = {
      "multext-east-msd" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }