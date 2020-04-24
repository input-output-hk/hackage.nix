{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "dnsrbl"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Holden <holden@pigscanfly.ca>";
      author = "Holden Karau <holden@pigscanfly.ca>";
      homepage = "http://www.pigscanfly.ca/~holden/dnsrbl/";
      url = "";
      synopsis = "Asynchronous DNS RBL lookup";
      description = "Asynchronous DNS RBL lookup";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hsdns" or ((hsPkgs.pkgs-errors).buildDepError "hsdns"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }