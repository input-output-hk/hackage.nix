{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = { name = "GeoIp"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "siti@orcon.net.nz";
      author = "Stephen Cook";
      homepage = "";
      url = "";
      synopsis = "Pure bindings for the MaxMind IP database.";
      description = "GeoIp is a pure haskell binding to the MaxMind IP database.\nThe IP database contains information such as the approximate\nlongitude and latitude of an IP address.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-mmap" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-mmap"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }