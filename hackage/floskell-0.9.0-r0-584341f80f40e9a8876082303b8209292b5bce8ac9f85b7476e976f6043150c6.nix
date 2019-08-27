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
      specVersion = "1.8";
      identifier = { name = "floskell"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done, 2015 Andrew Gibiansky, 2016-2019 Enno Cramer";
      maintainer = "ecramer@memfrob.de";
      author = "Chris Done, Andrew Gibiansky, Tobias Pflug, Pierre Radermecker, Enno Cramer";
      homepage = "https://www.github.com/ennocramer/floskell";
      url = "";
      synopsis = "A flexible Haskell source code pretty printer";
      description = "A flexible Haskell source code pretty printer.\n\nSee the Github page for usage\\/explanation: <https://github.com/ennocramer/floskell>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."monad-dijkstra" or (buildDepError "monad-dijkstra"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "floskell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."floskell" or (buildDepError "floskell"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "floskell-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."floskell" or (buildDepError "floskell"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            ];
          };
        };
      benchmarks = {
        "floskell-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."floskell" or (buildDepError "floskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }