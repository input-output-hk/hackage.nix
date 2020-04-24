{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "exchangerates"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/exchangerates#readme";
      url = "";
      synopsis = "A Haskell client for https://exchangeratesapi.io/";
      description = "Please see the README on Github at <https://github.com/NorfairKing/exchangerates#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          (hsPkgs."validity-containers" or ((hsPkgs.pkgs-errors).buildDepError "validity-containers"))
          (hsPkgs."validity-time" or ((hsPkgs.pkgs-errors).buildDepError "validity-time"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "exchangerates-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."exchangerates" or ((hsPkgs.pkgs-errors).buildDepError "exchangerates"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-containers" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-containers"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."genvalidity-text" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-text"))
            (hsPkgs."genvalidity-time" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-time"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
            (hsPkgs."validity-containers" or ((hsPkgs.pkgs-errors).buildDepError "validity-containers"))
            (hsPkgs."validity-time" or ((hsPkgs.pkgs-errors).buildDepError "validity-time"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }