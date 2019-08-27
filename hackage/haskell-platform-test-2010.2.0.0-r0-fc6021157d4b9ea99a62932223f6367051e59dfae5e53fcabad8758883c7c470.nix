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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "haskell-platform-test"; version = "2010.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Don Stewart.";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/haskell-platform-test";
      url = "";
      synopsis = "A test system for the Haskell Platform environment";
      description = "A test system for the Haskell Platform environment\n\nRun:\n\n> cabal install haskell-platform-test\n\nAfter installing the Haskell Platform version corresponding to this\nrelease.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-platform-test" = {
          depends = [
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."hpc" or (buildDepError "hpc"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
            ];
          };
        };
      };
    }