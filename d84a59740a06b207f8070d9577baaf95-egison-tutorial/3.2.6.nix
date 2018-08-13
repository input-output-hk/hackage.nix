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
        name = "egison-tutorial";
        version = "3.2.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Satoshi Egi <egi@egison.org>";
      author = "Satoshi Egi";
      homepage = "http://www.egison.org";
      url = "";
      synopsis = "A tutorial program for the programming language Egison";
      description = "A tutorial program for the programming language Egison.\nEgison is the programming langugage that realized non-linear pattern-matching with unfree data types.\nWith Egison, you can represent pattern-matching with unfree data types intuitively, especially for collection data, such as lists, multisets, sets.\nPlease learn Egison with this tutorial program!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "egison-tutorial" = {
          depends  = [
            (hsPkgs.egison)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.filepath)
            (hsPkgs.regex-posix)
            (hsPkgs.strict-io)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }