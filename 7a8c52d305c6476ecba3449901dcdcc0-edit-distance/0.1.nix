{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      tests = false;
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "edit-distance";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "";
      url = "";
      synopsis = "Levenhstein and restricted Damerau-Levenshtein edit distances";
      description = "Optimized edit distances for fuzzy matching, including Levenhstein and restricted Damerau-Levenshtein algorithms.";
      buildType = "Simple";
    };
    components = {
      "edit-distance" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ];
      };
      exes = {
        "edit-distance-tests" = {
          depends  = if _flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.random)
              (hsPkgs.QuickCheck)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.QuickCheck)
            ];
        };
        "edit-distance-benchmark" = {
          depends  = if _flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.random)
              (hsPkgs.old-time)
              (hsPkgs.process)
              (hsPkgs.parallel)
              (hsPkgs.unix)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.parallel)
              (hsPkgs.unix)
            ];
        };
      };
    };
  }