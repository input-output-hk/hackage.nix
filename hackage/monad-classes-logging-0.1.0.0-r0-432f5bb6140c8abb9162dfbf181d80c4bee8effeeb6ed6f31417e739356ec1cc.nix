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
    flags = { feuerbach = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-classes-logging"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Edward George";
      maintainer = "edwardgeorge@gmail.com";
      author = "Edward George";
      homepage = "https://github.com/edwardgeorge/monad-classes-logging#readme";
      url = "";
      synopsis = "monad-classes based typeclass for Ollie's logging-effect LoggingT";
      description = "monad-classes based typeclass for Ollie's logging-effect LoggingT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."logging-effect" or (buildDepError "logging-effect"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ [ (hsPkgs."monad-classes" or (buildDepError "monad-classes")) ];
        };
      tests = {
        "monad-classes-logging-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."logging-effect" or (buildDepError "logging-effect"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-classes-logging" or (buildDepError "monad-classes-logging"))
            ] ++ [
            (hsPkgs."monad-classes" or (buildDepError "monad-classes"))
            ];
          };
        };
      };
    }