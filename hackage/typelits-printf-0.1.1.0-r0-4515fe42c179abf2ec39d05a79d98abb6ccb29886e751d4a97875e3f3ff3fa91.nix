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
      specVersion = "1.12";
      identifier = { name = "typelits-printf"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2019";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/typelits-printf#readme";
      url = "";
      synopsis = "Type-safe printf from parsing GHC TypeLits Symbol";
      description = "An extensible and type-safe printf from parsing GHC TypeLits Symbol\nliterals, matching the semantics of 'P.printf' from \"Text.Printf\" in /base/.\nThe difference is that the variants here will always fail to compile if\ngiven arguments of the wrong type (or too many or too little arguments).\nMost of the variants also provide useful type feedback, telling you the type\nof arguments it expects and how many when queried with @:t@ or with typed\nholes.\n\nSee README and documentation of \"GHC.TypeLits.Printf\" for more information";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."symbols" or (buildDepError "symbols"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }