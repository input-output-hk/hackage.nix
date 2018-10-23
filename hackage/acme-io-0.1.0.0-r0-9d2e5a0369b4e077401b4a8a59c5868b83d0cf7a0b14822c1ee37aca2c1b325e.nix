{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "acme-io";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "benzrf@benzrf.com";
      author = "benzrf";
      homepage = "N/A";
      url = "";
      synopsis = "The only true way to do IO in Haskell!";
      description = "";
      buildType = "Simple";
    };
    components = {
      "acme-io" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }