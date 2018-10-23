{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hsc2hs";
        version = "0.68";
      };
      license = "BSD-3-Clause";
      copyright = "2000, Marcin Kowalczyk";
      maintainer = "ghc-devs@haskell.org";
      author = "Marcin Kowalczyk <qrczak@knm.org.pl>";
      homepage = "";
      url = "";
      synopsis = "A preprocessor that helps with writing Haskell bindings to C code";
      description = "The hsc2hs program can be used to automate some parts of the\nprocess of writing Haskell bindings to C code.  It reads an\nalmost-Haskell source file with embedded special constructs, and\noutputs a real Haskell file with these constructs processed, based\non information taken from some C headers.  The extra constructs\nprovide Haskell counterparts of C types, values of C constants,\nincluding sizes of C types, and access to fields of C structs.\n\nFor more details, see\n<http://www.haskell.org/ghc/docs/latest/html/users_guide/hsc2hs.html>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsc2hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }