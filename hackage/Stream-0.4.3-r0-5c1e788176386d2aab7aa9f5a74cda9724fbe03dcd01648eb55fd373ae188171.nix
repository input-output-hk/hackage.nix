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
      specVersion = "0";
      identifier = { name = "Stream"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <wss@cs.nott.ac.uk>";
      author = "Wouter Swierstra <wss@cs.nott.ac.uk>,\nBas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "http://www.cs.nott.ac.uk/~wss/repos/Stream/dist/doc/html/";
      url = "";
      synopsis = "A library for manipulating infinite lists.";
      description = "This package implements functions, analogous\nto those from Data.List, to create and manipulate\ninfinite lists: @data Stream a = Cons a (Stream a)@.\nIt provides alternative definitions for those\nPrelude functions that make sense for such streams.\nNote that this package has (almost)\nnothing to do with the work on /Stream Fusion/ by\nDuncan Coutts, Roman Leshchinskiy, and Don Stewart.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."lazysmallcheck" or (buildDepError "lazysmallcheck"))
          ];
        };
      };
    }