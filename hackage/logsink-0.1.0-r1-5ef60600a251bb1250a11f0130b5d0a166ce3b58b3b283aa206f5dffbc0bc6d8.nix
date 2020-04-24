{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "logsink"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) Zalora South East Asia Pte. Ltd";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A logging framework for Haskell";
      description = "A logging framework for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."logging-facade" or ((hsPkgs.pkgs-errors).buildDepError "logging-facade"))
          (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logsink" or ((hsPkgs.pkgs-errors).buildDepError "logsink"))
            (hsPkgs."logging-facade" or ((hsPkgs.pkgs-errors).buildDepError "logging-facade"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }