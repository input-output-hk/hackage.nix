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
      specVersion = "1.8";
      identifier = {
        name = "ConcurrentUtils";
        version = "0.2.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "alkalisoftware.net";
      url = "";
      synopsis = "Concurrent utilities";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ConcurrentUtils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
        ];
      };
    };
  }