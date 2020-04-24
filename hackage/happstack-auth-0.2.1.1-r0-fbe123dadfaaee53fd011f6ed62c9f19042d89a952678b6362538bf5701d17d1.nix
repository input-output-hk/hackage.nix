{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "happstack-auth"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@n-sch.de";
      author = "Nils Schweinsberg";
      homepage = "http://n-sch.de/happstack-auth";
      url = "";
      synopsis = "A Happstack Authentication Suite";
      description = "An easy way to to implement user authentication for\nHappstack web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."happstack" or ((hsPkgs.pkgs-errors).buildDepError "happstack"))
          (hsPkgs."happstack-state" or ((hsPkgs.pkgs-errors).buildDepError "happstack-state"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."happstack-ixset" or ((hsPkgs.pkgs-errors).buildDepError "happstack-ixset"))
          (hsPkgs."happstack-data" or ((hsPkgs.pkgs-errors).buildDepError "happstack-data"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          ];
        buildable = true;
        };
      };
    }