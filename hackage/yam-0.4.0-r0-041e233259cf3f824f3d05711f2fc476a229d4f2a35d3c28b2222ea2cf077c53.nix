{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam#readme";
      url = "";
      synopsis = "Yam Web";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.data-default)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.random)
          (hsPkgs.reflection)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.salak)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-swagger-ui)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          (hsPkgs.vault)
          (hsPkgs.wai)
          (hsPkgs.warp)
          ];
        };
      exes = {
        "yam" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.resource-pool)
            (hsPkgs.resourcet)
            (hsPkgs.salak)
            (hsPkgs.servant-server)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio-core)
            (hsPkgs.vault)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.yam)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.resource-pool)
            (hsPkgs.resourcet)
            (hsPkgs.salak)
            (hsPkgs.servant-server)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
            (hsPkgs.vault)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }