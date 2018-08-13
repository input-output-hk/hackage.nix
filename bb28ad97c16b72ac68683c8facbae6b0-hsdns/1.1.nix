{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "hsdns";
        version = "1.1";
      };
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
      "hsdns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
        libs = [ (pkgs.adns) ];
      };
    };
  }