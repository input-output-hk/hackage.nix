{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "cabal-bounds";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
      description = "A command line program for managing the bounds/versions of the dependencies in a cabal file.\n\n'cabal-bounds' is able to do these things with the bounds of the dependencies in the cabal file:\n\n* drop them\n\n* update them by the library versions of the current cabal build\n\n* update them by the library versions of a haskell platform release\n\n* update them by the library versions specified by a file\n\n* dump the libraries/dependencies and their lower bound versions from the cabal file(s) into a file\n\nFor further details please consult the <https://github.com/dan-t/cabal-bounds README>.\n\n/Installation/\n\nYou have to ensure, that the 'Cabal' library of 'cabal-bounds' matches the one used by the 'cabal' binary:\n\n> \$ cabal --version\n> cabal-install version 1.18.0.2\n> using version 1.18.1 of the Cabal library\n\n> \$ cabal install --constraint=\"Cabal == 1.18.1\" cabal-bounds\n\nIf you update the 'cabal' binary and the used 'Cabal' library changes, then you have to rebuild 'cabal-bounds'.\n\n/Issues/\n\nPerhaps the currently most annoying thing is, that you have to live with the reformating of your\n'cabal' file done by the pretty printer of the 'Cabal' library.\n\nTo reformat your 'cabal' file without changing any bounds you can call 'cabal-bounds' with the name of\na section that isn't present in the 'cabal' file:\n\n> \$ cabal-bounds drop --executable=blub myproject.cabal";
      buildType = "Simple";
    };
    components = {
      "cabal-bounds" = {
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