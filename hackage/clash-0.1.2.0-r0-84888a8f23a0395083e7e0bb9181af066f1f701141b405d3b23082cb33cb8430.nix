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
      identifier = { name = "clash"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2010 Christiaan Baaij &\nMatthijs Kooijman";
      maintainer = "christiaan.baaij@gmail.com & matthijs@stdin.nl";
      author = "Christiaan Baaij & Matthijs Kooijman";
      homepage = "http://clash.ewi.utwente.nl/";
      url = "http://github.com/christiaanb/clash/tree/master/clash";
      synopsis = "CAES Language for Synchronous Hardware (CLaSH)";
      description = "CLaSH is a tool-chain/language to translate subsets of\nHaskell to synthesizable VHDL. It does this by translating\nthe intermediate System Fc (GHC Core) representation to a\nVHDL AST, which is then written to file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."vhdl" or (buildDepError "vhdl"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."data-accessor-template" or (buildDepError "data-accessor-template"))
          (hsPkgs."data-accessor-transformers" or (buildDepError "data-accessor-transformers"))
          (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }