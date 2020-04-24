{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "rpf"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/rpf/";
      url = "";
      synopsis = "Receiver Policy Framework";
      description = "Receiver Policy Framework (RPF) is a Milter\nprogram to change actions of e-mail receiver\nside according to results of the anti-spam\ntechnologies.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rpf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hdaemonize" or ((hsPkgs.pkgs-errors).buildDepError "hdaemonize"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."appar" or ((hsPkgs.pkgs-errors).buildDepError "appar"))
            (hsPkgs."c10k" or ((hsPkgs.pkgs-errors).buildDepError "c10k"))
            (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
            (hsPkgs."dns" or ((hsPkgs.pkgs-errors).buildDepError "dns"))
            (hsPkgs."domain-auth" or ((hsPkgs.pkgs-errors).buildDepError "domain-auth"))
            ];
          buildable = true;
          };
        };
      };
    }