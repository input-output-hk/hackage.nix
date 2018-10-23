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
        name = "thumbnail";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "Katsutoshi Itoh";
      homepage = "https://github.com/cutsea110/thumbnail";
      url = "";
      synopsis = "generate thumbnail image";
      description = "generate thumbnail image";
      buildType = "Simple";
    };
    components = {
      "thumbnail" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gd)
          (hsPkgs.bytestring)
        ];
      };
    };
  }