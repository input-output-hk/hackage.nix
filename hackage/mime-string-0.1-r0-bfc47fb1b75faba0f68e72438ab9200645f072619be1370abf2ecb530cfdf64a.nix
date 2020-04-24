{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "mime-string"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2005, 2007";
      maintainer = "igloo@earth.li";
      author = "Ian Lynagh";
      homepage = "http://urchin.earth.li/~ian/cabal/mime-string/";
      url = "";
      synopsis = "MIME implementation for String's.";
      description = "Implementation of the MIME RFCs 2045-2049.\nA bit rough around the edges.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."iconv" or ((hsPkgs.pkgs-errors).buildDepError "iconv"))
          (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
          ];
        buildable = true;
        };
      };
    }