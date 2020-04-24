{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hlibBladeRF"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) Edward O'Callaghan, 2015";
      maintainer = "eocallaghan@alterapraxis.com";
      author = "Edward O'Callaghan";
      homepage = "https://victoredwardocallaghan.github.io/hlibBladeRF";
      url = "";
      synopsis = "Haskell binding to libBladeRF SDR library";
      description = "IO Monadic binding for libbladeRF software defined radio.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libbladeRF" or ((hsPkgs.pkgs-errors).pkgConfDepError "libbladeRF"))
          ];
        buildable = true;
        };
      tests = {
        "haddock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }