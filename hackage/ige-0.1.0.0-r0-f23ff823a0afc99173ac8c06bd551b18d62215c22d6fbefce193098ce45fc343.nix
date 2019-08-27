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
      specVersion = "1.10";
      identifier = { name = "ige"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "owen@olynch.me";
      author = "Owen Lynch";
      homepage = "https://github.com/olynch/ige";
      url = "";
      synopsis = "An keyboard-driven interactive graph editor";
      description = "`IGE` attempts to build a reusable library for implementing graph editors. The intent is to allow a new class of programming languages that have non-linear structure. See `glance` (an alternative syntax for haskell) for one example of such a structure. Other applications include circuit design, commutative diagram drawing, server configuration. Currently a very early alpha.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ige" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."stm-conduit" or (buildDepError "stm-conduit"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }