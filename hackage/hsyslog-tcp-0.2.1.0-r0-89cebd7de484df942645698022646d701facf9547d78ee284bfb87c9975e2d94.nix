{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsyslog-tcp"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Ömer Sinan Ağacan";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "https://github.com/osa1/hsyslog-tcp#readme";
      url = "";
      synopsis = "syslog over TCP";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
          (hsPkgs."hsyslog-udp" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog-udp"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }