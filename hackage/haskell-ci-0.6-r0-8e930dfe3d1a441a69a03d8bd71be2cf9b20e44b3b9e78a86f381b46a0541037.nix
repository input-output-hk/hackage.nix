{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { shellcheck = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "haskell-ci"; version = "0.6"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel, Oleg Grenrus";
      homepage = "https://haskell-ci.rtfd.org/";
      url = "";
      synopsis = "Cabal package script generator for Travis-CI";
      description = "Script generator (@haskell-ci@) for [Travis-CI](https://travis-ci.org/) for continuous-integration testing of Haskell Cabal packages.\n\nIncluded features (not limited to):\n\n* Multiple GHC support\n* Dependency caching\n* cabal.project support (see [Nix-style local builds documentation](https://cabal.readthedocs.io/en/latest/nix-local-build-overview.html))\n* Runs tests and builds benchmarks\n* Generates Haddocks\n* macOS (OSX) support\n* GHCJS support\n* building with specific constraints\n\n=== Quick Start Guide\n\nAdd a @tested-with@ line to your @.cabal@ file (e.g. @tested-with: GHC == 8.0.2 || == 8.2.2@) and then run @haskell-ci yourpackage.cabal -o .travis.yml@ to generate the Travis-CI job script.\n\nSee @haskell-ci --help@ for more information.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "haskell-ci-internal" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
            (hsPkgs."HsYAML" or ((hsPkgs.pkgs-errors).buildDepError "HsYAML"))
            (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))) ++ (pkgs.lib).optional (flags.shellcheck && (compiler.isGhc && ((compiler.version).ge "7.10" && (compiler.version).lt "8.7"))) (hsPkgs."ShellCheck" or ((hsPkgs.pkgs-errors).buildDepError "ShellCheck"));
          buildable = true;
          };
        };
      exes = {
        "haskell-ci" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-ci-internal" or ((hsPkgs.pkgs-errors).buildDepError "haskell-ci-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskell-ci-internal" or ((hsPkgs.pkgs-errors).buildDepError "haskell-ci-internal"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }