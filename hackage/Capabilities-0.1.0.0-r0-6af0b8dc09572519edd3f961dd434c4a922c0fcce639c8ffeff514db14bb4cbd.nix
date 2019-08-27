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
      identifier = { name = "Capabilities"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baldur@student.chalmers.se, daniel@schoepe.org";
      author = "Baldur Blöndal, Daniel Schoepe";
      homepage = "https://github.com/Icelandjack/Capabilities";
      url = "";
      synopsis = "Separate and contain effects of IO monad.";
      description = "The /capabilities/ library is an effort to make effects in Haskell\nmore explicit by breaking the monolithic IO monad into smaller\ncomposable parts called /capabilities/: a use case might be an\naction that needs logging with current time but which should not be\nallowed any other IO. This exists as a pleasant middle ground\nbetween pure functions, the ST monad and the kitchen-sink IO\nproviding a more fine-grained approach to effectful\ncomputations. Another benefit to this approach is security where a\ncomputation should only have access to resources requires to\ncomplete its job (/principle of least privilege/).\n\nThe implementation of the idea is based on Wouter Swierstra's\nFunctional Pearl /Data types a la carte/ (Journal of Functional\nProgramming, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>) and uses the\n'compdata' package for compositional data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."compdata" or (buildDepError "compdata"))
          ];
        };
      };
    }