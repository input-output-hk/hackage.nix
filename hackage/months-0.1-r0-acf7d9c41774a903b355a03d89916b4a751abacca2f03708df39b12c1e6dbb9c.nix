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
      aeson = true;
      cassava = true;
      http-api-data = true;
      intervals = true;
      lucid = true;
      swagger2 = true;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "months"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/months";
      url = "";
      synopsis = "Month, YearMonth, Quarter, YearQuarter types";
      description = "Month and Quarter enumerations and some basic function and instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."time-compat" or (buildDepError "time-compat"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.cassava) (hsPkgs."cassava" or (buildDepError "cassava"))) ++ (pkgs.lib).optional (flags.http-api-data) (hsPkgs."http-api-data" or (buildDepError "http-api-data"))) ++ (pkgs.lib).optional (flags.intervals) (hsPkgs."intervals" or (buildDepError "intervals"))) ++ (pkgs.lib).optional (flags.lucid) (hsPkgs."lucid" or (buildDepError "lucid"))) ++ (pkgs.lib).optionals (flags.aeson && flags.swagger2) [
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          ]) ++ (pkgs.lib).optional ((flags.cassava || flags.http-api-data) && !(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs."bifunctors" or (buildDepError "bifunctors"));
        buildable = true;
        };
      };
    }