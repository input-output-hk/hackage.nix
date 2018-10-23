{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      gsl-example = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "inline-c";
        version = "0.5.3.0";
      };
      license = "MIT";
      copyright = "(c) 2015 FP Complete Corporation";
      maintainer = "francesco@fpcomplete.com";
      author = "Francesco Mazzoli, Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "Write Haskell source files including C code inline. No FFI required.";
      description = "See <https://github.com/fpco/inline-c/blob/master/README.md>.";
      buildType = "Simple";
    };
    components = {
      "inline-c" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.parsers)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "gsl-ode" = {
          depends  = pkgs.lib.optionals (flags.gsl-example) [
            (hsPkgs.base)
            (hsPkgs.inline-c)
            (hsPkgs.vector)
            (hsPkgs.Chart)
            (hsPkgs.Chart-cairo)
          ];
          libs = [
            (pkgs."gsl")
            (pkgs."gslcblas")
            (pkgs."m")
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.inline-c)
            (hsPkgs.parsers)
            (hsPkgs.QuickCheck)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.regex-posix)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }