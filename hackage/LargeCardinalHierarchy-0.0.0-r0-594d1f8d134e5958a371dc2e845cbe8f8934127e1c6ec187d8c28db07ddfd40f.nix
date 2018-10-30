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
      specVersion = "1.2";
      identifier = {
        name = "LargeCardinalHierarchy";
        version = "0.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Stephen E. A. Britton";
      maintainer = "Stephen E. A. Britton";
      author = "Stephen E. A. Britton";
      homepage = "";
      url = "";
      synopsis = "A transfinite cardinal arithmetic library including all known large cardinals";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }