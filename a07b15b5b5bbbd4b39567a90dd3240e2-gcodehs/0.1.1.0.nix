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
        name = "gcodehs";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/hackerspace/gcodehs";
      url = "";
      synopsis = "GCode processor";
      description = "GCode parser, pretty-printer and processing utils";
      buildType = "Simple";
    };
    components = {
      "gcodehs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.double-conversion)
          (hsPkgs.text)
          (hsPkgs.pipes)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.mtl)
          (hsPkgs.vty)
          (hsPkgs.array)
        ];
      };
      exes = {
        "gcodehs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.double-conversion)
            (hsPkgs.gcodehs)
            (hsPkgs.text)
            (hsPkgs.pipes)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-parse)
            (hsPkgs.pipes-text)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }