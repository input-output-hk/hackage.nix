{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { shellcheck = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "haskell-ci"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel, Oleg Grenrus";
      homepage = "https://haskell-ci.rtfd.org/";
      url = "";
      synopsis = "Cabal package script generator for Travis-CI";
      description = "Script generator (@haskell-ci@) for [Travis-CI](https://travis-ci.org/) for continuous-integration testing of Haskell Cabal packages.\n\nIncluded features (not limited to):\n\n* Multiple GHC support\n* Dependency caching\n* cabal.project support (see [Nix-style local builds documentation](https://cabal.readthedocs.io/en/latest/nix-local-build-overview.html))\n* Runs tests and builds benchmarks\n* Generates Haddocks\n* macOS (OSX) support\n* building with specific constraints\n\n=== Quick Start Guide\n\nAdd a @tested-with@ line to your @.cabal@ file (e.g. @tested-with: GHC == 8.0.2 || == 8.2.2@) and then run @haskell-ci yourpackage.cabal -o .travis.yml@ to generate the Travis-CI job script.\n\nSee @haskell-ci --help@ for more information.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "haskell-ci-internal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.base-compat)
            (hsPkgs.generic-lens)
            (hsPkgs.HsYAML)
            (hsPkgs.microlens)
            (hsPkgs.optparse-applicative)
            ] ++ (pkgs.lib).optional (flags.shellcheck && (compiler.isGhc && ((compiler.version).ge "7.10" && (compiler.version).lt "8.7"))) (hsPkgs.ShellCheck);
          };
        };
      exes = {
        "haskell-ci" = {
          depends = [ (hsPkgs.base) (hsPkgs.haskell-ci-internal) ];
          };
        };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-ci-internal)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }