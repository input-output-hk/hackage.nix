let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { no-cabal-dev = false; build-tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-dev"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "2010 Galois, Inc.";
      maintainer = "j3h@galois.com, jtd@galois.com, creswick@galois.com";
      author = "Josh Hoyt, Jonathan Daughtery, Rogan Creswick";
      homepage = "https://github.com/creswick/cabal-dev";
      url = "";
      synopsis = "Manage sandboxed Haskell build environments";
      description = "cabal-dev is a tool for managing development builds of\nHaskell projects. It supports maintaining sandboxed\ncabal-install repositories, and sandboxed ghc package\ndatabases.\n\nBy default, it uses a cabal-dev directory under\nthe current working directory as the sandbox.\n\nFor most packages, just use @cabal-dev@ instead of\n@cabal@, and you will get a sandboxed build that\nwill not install anything (even automatically installed\ndependencies) into the user or global ghc package\ndatabases.\n\nIf your build depends on patched or unreleased libraries,\nyou can add them to your sandboxed build environment so\nthey can be installed by @cabal-dev@ or @cabal@. Just run:\n\n> cabal-dev add-source /path/to/source/code\n\n@cabal-dev add-source@ also supports importing tarballs\ninto a local cabal repository.\n\nThis tool has been tested with GHC 6.8-6.12.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "ghc-pkg-6_8-compat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          buildable = true;
          };
        "cabal-dev-test" = {
          depends = (pkgs.lib).optionals (!(flags.no-cabal-dev || !flags.build-tests)) ([
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ] ++ [
            (hsPkgs."base" or (buildDepError "base"))
            ]) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
          buildable = if flags.no-cabal-dev || !flags.build-tests
            then false
            else true;
          };
        "cabal-dev" = {
          depends = (pkgs.lib).optionals (!flags.no-cabal-dev) ([
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ] ++ [
            (hsPkgs."base" or (buildDepError "base"))
            ]) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
          build-tools = [
            (hsPkgs.buildPackages.cabal or (pkgs.buildPackages.cabal or (buildToolDepError "cabal")))
            ];
          buildable = if flags.no-cabal-dev then false else true;
          };
        };
      };
    }