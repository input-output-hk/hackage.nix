{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "fedora-img-dl"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "";
      url = "";
      synopsis = "Fedora image download tool";
      description = "Tool to download Fedora iso and image files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fedora-img-dl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."html-conduit" or ((hsPkgs.pkgs-errors).buildDepError "html-conduit"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."simple-cmd" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd-args"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."xdg-userdirs" or ((hsPkgs.pkgs-errors).buildDepError "xdg-userdirs"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }