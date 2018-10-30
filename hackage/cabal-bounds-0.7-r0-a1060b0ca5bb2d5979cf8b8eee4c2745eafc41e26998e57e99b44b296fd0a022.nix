{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "cabal-bounds";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
      description = "A command line program for managing the bounds/versions of the dependencies in a cabal file.\n\n`cabal-bounds` is able to do three things with the bounds of the dependencies in the cabal file:\n\n* drop them\n\n* update them by the library versions of the current cabal build\n\n* update them by the library versions of a haskell platform release\n\nFor further details please consult the <https://github.com/dan-t/cabal-bounds README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.lens)
          (hsPkgs.strict)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.either)
          (hsPkgs.cabal-lenses)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "cabal-bounds" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cabal-bounds)
          ];
        };
      };
      tests = {
        "cabal-bounds-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.filepath)
            (hsPkgs.cabal-bounds)
          ];
        };
      };
    };
  }