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
      specVersion = "1.10";
      identifier = {
        name = "tuple-generic";
        version = "0.2.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "";
      url = "";
      synopsis = "Generic operations on tuples";
      description = "Generic operations on tuples";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }