{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hsdns"; version = "1.4.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>,\nLutz Donnerhacke <lutz@iks-jena.de>\nГригорий Холомьёв <omever@gmail.com>";
      homepage = "http://cryp.to/hsdns/";
      url = "";
      synopsis = "Asynchronous DNS Resolver";
      description = "Asynchronous DNS Resolver; requires GNU ADNS to be installed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = [ (pkgs."adns" or ((hsPkgs.pkgs-errors).sysDepError "adns")) ];
        buildable = true;
        };
      };
    }