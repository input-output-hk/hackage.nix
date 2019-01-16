{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vabal"; version = "2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "franciman12@gmail.com";
      author = "Francesco Magliocca";
      homepage = "https://github.com/vabal/vabal";
      url = "";
      synopsis = "the cabal companion";
      description = "`vabal` finds a version of `GHC` that is compatible with\nthe constraints imposed on base package found\nin the cabal file analyzed. It then uses `ghcup`\nto obtain the correct version of the compiler (potentially downloading it).\nIt supports three modes:\n\n* @vabal configure@ (it configures your project to use the obtained `ghc`),\n* @vabal@ (it prints to stdout options to give to `cabal` to use the obtained `ghc`.\nOptions are escaped so that they can sent to the `xargs` POSIX utility).\n* @vabal show@ (it works like @vabal@ but prints\nthe version of the obtained `ghc` to stdout instead of options to pass to `cabal`).\n\nSee the README for more detailed informations.";
      buildType = "Simple";
      };
    components = {
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
            (hsPkgs.containers)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.http-client-tls)
            (hsPkgs.vabal-lib)
            ];
          };
        };
      tests = {
        "xargs-escape-test" = { depends = [ (hsPkgs.base) (hsPkgs.process) ]; };
        };
      };
    }