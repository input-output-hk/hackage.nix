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
        name = "pbc4hs";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "davidxifeng@gmail.com";
      author = "david feng";
      homepage = "";
      url = "";
      synopsis = "pbc for HsLua";
      description = "pbc wrapper for HsLua";
      buildType = "Simple";
    };
    components = {
      "pbc4hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hslua)
        ];
      };
    };
  }