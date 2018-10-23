{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "timeparsers";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Nathan Ferris Hunter, 2011";
      maintainer = "Nathan Ferris Hunter <nathan.f.hunter@gmail.com>";
      author = "Nathan Ferris Hunter";
      homepage = "";
      url = "";
      synopsis = "Attoparsec parsers for various Date/Time formats.";
      description = "Parsers for various Date/Time formats, implemented in AttoParsec.";
      buildType = "Simple";
    };
    components = {
      "timeparsers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.convertible)
          (hsPkgs.containers)
        ];
      };
    };
  }