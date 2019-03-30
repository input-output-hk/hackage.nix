{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam"; version = "0.5.15"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam/yam#readme";
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
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.fast-logger)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.menshen)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.reflection)
          (hsPkgs.salak)
          (hsPkgs.scientific)
          (hsPkgs.servant-client)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-swagger-ui)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.warp)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.menshen)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.reflection)
            (hsPkgs.salak)
            (hsPkgs.scientific)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            (hsPkgs.vault)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }