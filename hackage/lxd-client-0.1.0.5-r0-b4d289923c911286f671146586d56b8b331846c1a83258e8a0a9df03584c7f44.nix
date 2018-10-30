{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lxd-client";
        version = "0.1.0.5";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/haskell-lxd-client#readme";
      url = "";
      synopsis = "LXD client written in Haskell.";
      description = "Implementation of the LXD client protocol in Haskell.\n\nThis module implements the LXD client protocol in Haskell using servant and\nwebsockets. It allows you to manage LXD containers and other resources\ndirectly from Haskell.\n\nMore information and a tutorial is in \"Network.LXD.Client.Commands\".\n\nAccompanying blog post:\n<https://deliquus.com/posts/2017-10-02-using-servant-to-orchestrate-lxd-containers.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bimap)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.semigroups)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.tls)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.websockets)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-validation)
        ];
      };
      exes = {
        "lxd-client-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lxd-client)
          ];
        };
      };
      tests = {
        "lxd-client-integration" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lxd-client)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.turtle)
            (hsPkgs.uuid)
          ];
        };
      };
    };
  }