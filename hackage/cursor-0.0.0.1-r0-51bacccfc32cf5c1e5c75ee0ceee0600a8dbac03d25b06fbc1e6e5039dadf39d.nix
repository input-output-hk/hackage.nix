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
        name = "cursor";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/cursor";
      url = "";
      synopsis = "Purely Functional Cursors";
      description = "Purely Functional Cursors for common data structures";
      buildType = "Simple";
    };
    components = {
      "cursor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.microlens)
          (hsPkgs.text)
          (hsPkgs.validity)
          (hsPkgs.validity-containers)
          (hsPkgs.validity-text)
        ];
      };
    };
  }