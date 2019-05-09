{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "libretls"; version = "0.0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "https://github.com/cartazio/libressl-hs";
      url = "";
      synopsis = "libtls bindings";
      description = "A thin wrapper about the libtls wrapper of libressl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.monad-ste)
          ];
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."libtls");
        };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.libressl)
            ];
          };
        };
      };
    }