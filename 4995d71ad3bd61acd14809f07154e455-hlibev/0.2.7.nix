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
      specVersion = "1.6";
      identifier = {
        name = "hlibev";
        version = "0.2.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aycan.irican@core.gen.tr";
      author = "Aycan iRiCAN";
      homepage = "http://github.com/aycanirican/hlibev";
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
        libs = [ (pkgs."ev") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }