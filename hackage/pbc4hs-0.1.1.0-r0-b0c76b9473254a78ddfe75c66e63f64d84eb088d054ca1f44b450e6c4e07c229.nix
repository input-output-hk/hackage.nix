{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pbc4hs"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "davidxifeng@gmail.com";
      author = "david feng";
      homepage = "https://github.com/DavidFeng/pbc4hs";
      url = "";
      synopsis = "pbc for HsLua";
      description = "pbc wrapper for HsLua";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.hslua) (hsPkgs.string-qq) ];
        };
      };
    }