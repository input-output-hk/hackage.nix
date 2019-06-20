{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pretty-loc"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guerric.chupin@gmail.com";
      author = "Guerric Chupin";
      homepage = "";
      url = "";
      synopsis = "Tracking and highlighting of locations in source files";
      description = "A library for manipulating and highlighting locations\nin source files";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.text) ]; };
      };
    }