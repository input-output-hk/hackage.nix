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
    flags = {
      pedantic = false;
      binary = true;
      data-default = true;
      deepseq = true;
      cereal = false;
      safecopy = false;
      lattices = false;
      dhall = true;
      serialise = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "verbosity"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2019 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/verbosity";
      url = "";
      synopsis = "Simple enum that encodes application verbosity.";
      description = "Simple enum that encodes application verbosity with various useful instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          ] ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or (buildDepError "binary"))) ++ (pkgs.lib).optional (flags.data-default) (hsPkgs."data-default-class" or (buildDepError "data-default-class"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or (buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.safecopy) (hsPkgs."safecopy" or (buildDepError "safecopy"))) ++ (pkgs.lib).optional (flags.lattices) (hsPkgs."lattices" or (buildDepError "lattices"))) ++ (pkgs.lib).optional (flags.dhall) (hsPkgs."dhall" or (buildDepError "dhall"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or (buildDepError "serialise"));
        };
      };
    }