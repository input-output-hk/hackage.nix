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
        name = "util-exception";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Exceptional utilities";
      description = "";
      buildType = "Simple";
    };
    components = {
      "util-exception" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic)
          (hsPkgs.control)
          (hsPkgs.lifted-base-tf)
          (hsPkgs.util)
        ];
      };
    };
  }