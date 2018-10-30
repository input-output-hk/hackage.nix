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
      specVersion = "1.10";
      identifier = {
        name = "cabal-test-bin";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "A program for finding temporary build file during cabal-test.";
      description = "cabal-test-bin finds exe-file for cabal test below\n\n> cabal install --enable-tests --run-tests\n\n> cabal test\n\nWhen a project uses cabal-sandbox, cabal-test-bin checks following paths.\n\n> <project root>/dist/dist-sandbox-<hash>/build/<exe-file>/<exe-file>\n\n> <project root>/dist/build/<exe-file>/<exe-file>\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-test-bin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }