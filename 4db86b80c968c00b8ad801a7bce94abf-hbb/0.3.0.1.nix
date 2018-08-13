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
        name = "hbb";
        version = "0.3.0.1";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "contact@wolf-kissendorf.de";
      author = "Christian Wolf";
      homepage = "https://bitbucket.org/bhris/hbb";
      url = "";
      synopsis = "Haskell Busy Bee, a backend for text editors.";
      description = "This project forms the executable hbb which can be used\nas backend for text editors to provide them with a rich\nHaskell editing experience.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hbb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.libhbb)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.directory)
            (hsPkgs.ghc-mod)
          ];
        };
      };
    };
  }