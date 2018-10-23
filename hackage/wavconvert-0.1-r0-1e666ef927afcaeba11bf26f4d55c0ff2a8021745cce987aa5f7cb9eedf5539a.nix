{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "wavconvert";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Tim Chevalier, 2008";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "";
      url = "";
      synopsis = "Command-line tool for converting audio files and filling in ID3 tags";
      description = "Command-line tool for converting audio files and filling in ID3 tags";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wavconvert" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }