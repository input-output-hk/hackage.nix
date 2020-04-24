{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "adhoc-network"; version = "1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Stephan Friedrichs,\nHenning Günther,\nOliver Mielentz,\nMartin Wegner";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "Ad-hoc P2P network protocol";
      description = "This is a library for ad hoc P2p networking, developed for the Barracuda\nchat client (by Stephan Friedrichs,\nHenning Günther, Oliver Mielentz and Martin Wegner).\n\nThis library implements the RFCs (see for example\n<http://tools.ietf.org/html/draft-strauss-p2p-chat>).\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
          (hsPkgs."hsgnutls" or ((hsPkgs.pkgs-errors).buildDepError "hsgnutls"))
          (hsPkgs."pkcs1" or ((hsPkgs.pkgs-errors).buildDepError "pkcs1"))
          (hsPkgs."xml-parsec" or ((hsPkgs.pkgs-errors).buildDepError "xml-parsec"))
          ];
        buildable = true;
        };
      };
    }