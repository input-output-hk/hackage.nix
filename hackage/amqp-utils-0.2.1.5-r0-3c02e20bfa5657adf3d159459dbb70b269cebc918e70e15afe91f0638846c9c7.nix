{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amqp-utils"; version = "0.2.1.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fd@taz.de";
      author = "Frank Doepper";
      homepage = "";
      url = "";
      synopsis = "Generic Haskell AMQP Consumer";
      description = "AMQP consumer which can\n- create a temporary queue and attach it to an exchange, or\n- attach to an existing queue;\n- display header and body info;\n- save message bodies to files;\n- call a callback script";
      buildType = "Simple";
      };
    components = {
      exes = {
        "konsum" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."x509-system" or ((hsPkgs.pkgs-errors).buildDepError "x509-system"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."amqp" or ((hsPkgs.pkgs-errors).buildDepError "amqp"))
            ];
          buildable = true;
          };
        };
      };
    }