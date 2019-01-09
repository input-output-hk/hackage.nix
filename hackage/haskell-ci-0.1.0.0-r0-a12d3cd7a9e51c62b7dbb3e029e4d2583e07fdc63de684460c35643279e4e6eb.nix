{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { shellcheck = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "haskell-ci"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel, Oleg Grenrus";
      homepage = "http://haskell-ci.rtfd.org/";
      url = "";
      synopsis = "Cabal package script generator for Travis-CI";
      description = "Script generator (@make-travis-yml@) for [Travis-CI](https://travis-ci.org/) for continuous-integration testing of Haskell Cabal packages.\n\nIncluded features (not limited to):\n\n* Multiple GHC support\n* Dependency caching\n* cabal.project support (see [Nix-style local builds documentation](http://cabal.readthedocs.io/en/latest/nix-local-build-overview.html)\n* Runs tests and builds benchmarks\n* Generates Haddocks\n* macOS (OSX) support\n* building with specific constraints\n\n=== Quick Start Guide\n\nAdd a @tested-with@ line to your @.cabal@ file (e.g. @tested-with: GHC == 8.0.2 || == 8.2.2@) and then run @make-travis-yml yourpackage.cabal -o .travis.yml@ to generate the Travis-CI job script.\n\nSee @make-travis-yml --help@ for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          ] ++ (pkgs.lib).optional (flags.shellcheck && (compiler.isGhc && ((compiler.version).ge "7.10" && (compiler.version).lt "8.5"))) (hsPkgs.ShellCheck);
        };
      exes = {
        "make-travis-yml" = {
          depends = [ (hsPkgs.base) (hsPkgs.haskell-ci) ];
          };
        };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs.haskell-ci)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.transformers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.ansi-terminal)
            (hsPkgs.Diff)
            ];
          };
        };
      };
    }