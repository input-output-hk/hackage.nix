{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam"; version = "0.5.6"; };
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
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.fast-logger)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.reflection)
          (hsPkgs.salak)
          (hsPkgs.scientific)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-swagger-ui)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault)
          (hsPkgs.wai)
          (hsPkgs.warp)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.reflection)
            (hsPkgs.salak)
            (hsPkgs.scientific)
            (hsPkgs.servant-server)
            (hsPkgs.servant-swagger)
            (hsPkgs.servant-swagger-ui)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            (hsPkgs.vault)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }