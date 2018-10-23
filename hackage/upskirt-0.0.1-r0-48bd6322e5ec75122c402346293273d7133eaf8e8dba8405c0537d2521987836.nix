{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "upskirt";
        version = "0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "";
      author = "Francesco Mazzoli (f@mazzo.li)";
      homepage = "";
      url = "";
      synopsis = "Binding to upskirt";
      description = "Bindings to the github fork of upskirt, a nice C markdown library:\n<https://github.com/tanoku/upskirt>";
      buildType = "Simple";
    };
    components = {
      "upskirt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }