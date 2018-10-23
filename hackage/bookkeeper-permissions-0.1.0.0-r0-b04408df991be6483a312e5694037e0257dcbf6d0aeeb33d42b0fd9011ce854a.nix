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
        name = "bookkeeper-permissions";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Philip Kamenarsky";
      maintainer = "p.kamenarsky@gmail.com";
      author = "Philip Kamenarsky";
      homepage = "https://github.com/pkamenarsky/bookkeeper-permissions";
      url = "";
      synopsis = "Permissions for bookkeeper records";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "bookkeeper-permissions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bookkeeper)
          (hsPkgs.type-level-sets)
        ];
      };
    };
  }