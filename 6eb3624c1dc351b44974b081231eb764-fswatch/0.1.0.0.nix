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
        name = "fswatch";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "-";
      author = "Zoltan Kelemen";
      homepage = "https://github.com/kelemzol/watch";
      url = "";
      synopsis = "File System watching tool with cli and slave functionalities.";
      description = "File System watching tool with cli and slave lib (with os process) functionalities.";
      buildType = "Simple";
    };
    components = {
      "fswatch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskeline)
          (hsPkgs.directory)
          (hsPkgs.fsnotify)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
        ];
      };
      exes = {
        "hfswatch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
            (hsPkgs.directory)
            (hsPkgs.fsnotify)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.fswatch)
          ];
        };
      };
    };
  }