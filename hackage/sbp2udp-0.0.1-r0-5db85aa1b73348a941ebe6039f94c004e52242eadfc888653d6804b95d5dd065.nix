{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sbp2udp"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mark@swift-nav.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "SBP to UDP";
      description = "SBP to UDP";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sbp2udp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."binary-conduit" or ((hsPkgs.pkgs-errors).buildDepError "binary-conduit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."sbp" or ((hsPkgs.pkgs-errors).buildDepError "sbp"))
            (hsPkgs."streaming-commons" or ((hsPkgs.pkgs-errors).buildDepError "streaming-commons"))
            ];
          buildable = true;
          };
        };
      };
    }