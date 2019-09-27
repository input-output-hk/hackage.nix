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
      identifier = { name = "delay"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2016 davean";
      maintainer = "davean <davean@xkcd.com>";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "More useful and humain delaying functions";
      description = "Functions to provide delays, timeouts, and callbacks where the target time is calculated either from a period as an offset from the initialization time, or at a specific 'UTCTime'.\n\nMost standard Haskell types are supported for periods, based on the second as the base unit quantity. For more complicated period calculations, 'Dimensional's 'Time' type is supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."dimensional" or (buildDepError "dimensional"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."delay" or (buildDepError "delay"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."dimensional" or (buildDepError "dimensional"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            ];
          buildable = true;
          };
        };
      };
    }