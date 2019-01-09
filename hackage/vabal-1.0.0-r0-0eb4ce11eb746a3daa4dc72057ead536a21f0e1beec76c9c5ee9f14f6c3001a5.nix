{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "vabal"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "franciman12@gmail.com";
      author = "Francesco Magliocca";
      homepage = "https://github.com/Franciman/vabal";
      url = "";
      synopsis = "the cabal companion";
      description = "`vabal` finds a version of `GHC` that is compatible with\nthe constraints imposed on base package found\nin the cabal file analyzed. It then uses `ghcup`\nto obtain the correct version of the compiler (potentially downloading it).\nIt supports two modes:\n\n* @vabal configure@ (it configures your project to use the obtained `ghc`),\n* @vabal@ (it prints to stdout options to give to cabal to use the obtained `ghc`.\nOptions are escaped so that they can sent to the `xargs` POSIX utility).\n\nSee the README for more detailed informations.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "vabal-internal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.http-client-tls)
            (hsPkgs.vector)
            ];
          };
        };
      exes = {
        "vabal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.cassava)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.vabal-internal)
            ];
          };
        };
      tests = {
        "test-on-hackage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.tar)
            (hsPkgs.unix)
            (hsPkgs.vabal-internal)
            ];
          };
        "xargs-escape-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.vabal-internal) ];
          };
        };
      };
    }