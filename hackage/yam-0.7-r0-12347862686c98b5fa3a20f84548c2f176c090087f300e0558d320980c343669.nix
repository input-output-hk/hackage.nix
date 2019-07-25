{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam#readme";
      url = "";
      synopsis = "A wrapper of servant";
      description = "A out-of-the-box wrapper of [servant](https://hackage.haskell.org/package/servant-server).";
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
          (hsPkgs.exceptions)
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
          (hsPkgs.transformers)
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
            (hsPkgs.exceptions)
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
            (hsPkgs.transformers)
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