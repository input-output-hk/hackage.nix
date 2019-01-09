{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-kubernetes"; version = "0.3.2"; };
      license = "MIT";
      copyright = "2016 - SoundCloud Ltd.";
      maintainer = "Aaron Levin <aaron.levin@soundcloud.com>";
      author = "Aaron Levin";
      homepage = "https://github.com/soundcloud/haskell-kubernetes";
      url = "";
      synopsis = "Haskell bindings to the Kubernetes API (via swagger-codegen)";
      description = "This project contains haskell bindings to the v1 Kubernetes api generated via <https://github.com/swagger-api/swagger-codegen swagger-codegen>. The client and (mock) server generated use the <https://github.com/haskell-servant/servant servant> project, thanks to the work of <(https://github.com/algas Masahiro Yamauchi>!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.scientific)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-server)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          ];
        };
      exes = {
        "client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.haskell-kubernetes)
            (hsPkgs.network-uri)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.split)
            (hsPkgs.transformers)
            ];
          };
        "server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-kubernetes)
            (hsPkgs.servant-server)
            (hsPkgs.servant-mock)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }