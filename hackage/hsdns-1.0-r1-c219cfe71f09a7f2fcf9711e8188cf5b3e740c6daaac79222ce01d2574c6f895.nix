{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hsdns";
        version = "1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/hsdns/";
      url = "";
      synopsis = "Asynchronous DNS Resolver";
      description = "An asynchronous DNS resolver based on GNU ADNS.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
        libs = [ (pkgs."adns") ];
      };
      exes = {
        "adns-reverse-lookup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
          ];
          libs = [ (pkgs."adns") ];
        };
      };
    };
  }