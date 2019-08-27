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
    flags = { io = false; newaccelerate = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "abstract-par-accelerate"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ryan Newton 2011-2012";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Provides the class ParAccelerate, nothing more.";
      description = "Following the convention the @abstract-par@ package,\nthis package simply defines an interface, in the form of a\ntype class, and does not contain any implementation.\nImporting this module gives the user an API to\naccess @Accelerate@ computations from within\n@Par@ computations, with the added benefit that\nthe @Par@ can do integrated CPU/GPU scheduling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."array" or (buildDepError "array"))
          ] ++ [
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          ]) ++ (pkgs.lib).optional (flags.io && flags.newaccelerate) (hsPkgs."accelerate-io" or (buildDepError "accelerate-io"));
        };
      };
    }