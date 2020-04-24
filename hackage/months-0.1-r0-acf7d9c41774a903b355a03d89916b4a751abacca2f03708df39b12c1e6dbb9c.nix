{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."time-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-compat"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.cassava) (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))) ++ (pkgs.lib).optional (flags.http-api-data) (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))) ++ (pkgs.lib).optional (flags.intervals) (hsPkgs."intervals" or ((hsPkgs.pkgs-errors).buildDepError "intervals"))) ++ (pkgs.lib).optional (flags.lucid) (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))) ++ (pkgs.lib).optionals (flags.aeson && flags.swagger2) [
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
          ]) ++ (pkgs.lib).optional ((flags.cassava || flags.http-api-data) && !(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"));
        buildable = true;
        };
      };
    }