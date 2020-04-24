{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hsdns"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/hsdns/";
      url = "";
      synopsis = "";
      description = "Asynchronous DNS Resolver; requires the GNU ADNS library to be installed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        libs = [ (pkgs."adns" or ((hsPkgs.pkgs-errors).sysDepError "adns")) ];
        buildable = true;
        };
      };
    }