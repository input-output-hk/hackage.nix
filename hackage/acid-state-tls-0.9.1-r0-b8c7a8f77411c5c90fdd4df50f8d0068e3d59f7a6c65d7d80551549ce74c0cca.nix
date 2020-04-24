{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "acid-state-tls"; version = "0.9.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2013, David Himmelstrup, Jeremy Shaw";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup, Jeremy Shaw";
      homepage = "http://acid-state.seize.it/";
      url = "";
      synopsis = "Add TLS support for Data.Acid.Remote";
      description = "Adds TLS support for connections to remote AcidState databases";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
          ];
        buildable = true;
        };
      };
    }