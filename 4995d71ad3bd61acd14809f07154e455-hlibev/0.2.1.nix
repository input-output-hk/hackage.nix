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
      specVersion = "0";
      identifier = {
        name = "hlibev";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aycan.irican@core.gen.tr";
      author = "Aycan iRiCAN";
      homepage = "";
      url = "";
      synopsis = "FFI interface to libev";
      description = "FFI interface to libev";
      buildType = "Simple";
    };
    components = {
      "hlibev" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
        libs = [ (pkgs.ev) ];
      };
    };
  }