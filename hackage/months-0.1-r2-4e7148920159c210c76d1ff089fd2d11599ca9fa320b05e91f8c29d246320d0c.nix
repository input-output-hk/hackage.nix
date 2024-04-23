{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.cassava) (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))) ++ pkgs.lib.optional (flags.http-api-data) (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))) ++ pkgs.lib.optional (flags.intervals) (hsPkgs."intervals" or (errorHandler.buildDepError "intervals"))) ++ pkgs.lib.optional (flags.lucid) (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))) ++ pkgs.lib.optionals (flags.aeson && flags.swagger2) [
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
        ]) ++ pkgs.lib.optional ((flags.cassava || flags.http-api-data) && !(compiler.isGhc && compiler.version.ge "8.2")) (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"));
        buildable = true;
      };
    };
  }