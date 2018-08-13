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
        name = "jsontsv";
        version = "0.1.3.1";
      };
      license = "MIT";
      copyright = "(c) 2014 Daniel Choi";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/jsontsv";
      url = "";
      synopsis = "JSON to TSV transformer";
      description = "Transforms JSON into tab-separated line-oriented output, for easier processing in Unix-style pipelines.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "jsontsv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.scientific)
            (hsPkgs.optparse-applicative)
            (hsPkgs.csv)
          ];
        };
      };
    };
  }