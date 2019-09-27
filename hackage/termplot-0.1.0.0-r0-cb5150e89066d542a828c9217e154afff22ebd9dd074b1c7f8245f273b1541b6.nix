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
      identifier = { name = "termplot"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Ricardo Catalinas Jiménez";
      maintainer = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      author = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      homepage = "https://github.com/jimenezrick/termplot";
      url = "";
      synopsis = "Plot time series in your terminal using commands stdout";
      description = "Use unicode characters to plot fancy time series in real-time in your terminal.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "termplot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time-units" or (buildDepError "time-units"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }