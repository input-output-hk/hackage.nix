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
      specVersion = "1.6";
      identifier = {
        name = "upskirt";
        version = "0.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Francesco Mazzoli (f@mazzo.li)";
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