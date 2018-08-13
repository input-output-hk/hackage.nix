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
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Richard Marko";
      maintainer = "rmarko@base48.cz";
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
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.formatting)
        ];
      };
      exes = {
        "gcodehs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.gcodehs)
            (hsPkgs.text)
            (hsPkgs.pipes)
            (hsPkgs.pipes-aeson)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-parse)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }