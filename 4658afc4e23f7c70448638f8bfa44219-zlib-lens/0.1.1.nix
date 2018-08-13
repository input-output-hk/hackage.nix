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
      specVersion = "1.10";
      identifier = {
        name = "zlib-lens";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "lens.github.io";
      url = "";
      synopsis = "Lenses for zlib";
      description = "";
      buildType = "Simple";
    };
    components = {
      "zlib-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.profunctors)
        ];
      };
    };
  }