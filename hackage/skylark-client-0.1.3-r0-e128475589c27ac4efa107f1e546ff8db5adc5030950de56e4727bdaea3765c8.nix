{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "skylark-client"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/githubuser/skylark-client#readme";
      url = "";
      synopsis = "Skylark client.";
      description = "Skylark network client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
          (hsPkgs."preamble" or ((hsPkgs.pkgs-errors).buildDepError "preamble"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "skylark-client" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."preamble" or ((hsPkgs.pkgs-errors).buildDepError "preamble"))
            (hsPkgs."skylark-client" or ((hsPkgs.pkgs-errors).buildDepError "skylark-client"))
            ];
          buildable = true;
          };
        "shake-skylark-client" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."shakers" or ((hsPkgs.pkgs-errors).buildDepError "shakers"))
            ];
          buildable = true;
          };
        };
      };
    }