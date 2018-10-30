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
        name = "cachix";
        version = "0.1.1";
      };
      license = "Apache-2.0";
      copyright = "2018 Domen Kožar";
      maintainer = "domen@enlambda.com";
      author = "Domen Kožar";
      homepage = "https://github.com/cachix/cachix#readme";
      url = "";
      synopsis = "Command line client for Nix binary cache hosting https://cachix.org";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.cachix-api)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.cookie)
          (hsPkgs.cryptonite)
          (hsPkgs.dhall)
          (hsPkgs.directory)
          (hsPkgs.ed25519)
          (hsPkgs.fsnotify)
          (hsPkgs.here)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lzma-conduit)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.mmorph)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.protolude)
          (hsPkgs.resourcet)
          (hsPkgs.servant)
          (hsPkgs.servant-auth)
          (hsPkgs.servant-auth-client)
          (hsPkgs.servant-client)
          (hsPkgs.servant-client-core)
          (hsPkgs.servant-streaming-client)
          (hsPkgs.streaming)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.uri-bytestring)
          (hsPkgs.versions)
        ];
      };
      exes = {
        "cachix" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.cachix)
            (hsPkgs.cachix-api)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.cookie)
            (hsPkgs.cryptonite)
            (hsPkgs.dhall)
            (hsPkgs.directory)
            (hsPkgs.ed25519)
            (hsPkgs.fsnotify)
            (hsPkgs.here)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lzma-conduit)
            (hsPkgs.megaparsec)
            (hsPkgs.memory)
            (hsPkgs.mmorph)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.resourcet)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.servant-auth-client)
            (hsPkgs.servant-client)
            (hsPkgs.servant-client-core)
            (hsPkgs.servant-streaming-client)
            (hsPkgs.streaming)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.uri-bytestring)
            (hsPkgs.versions)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
      tests = {
        "cachix-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.cachix)
            (hsPkgs.cachix-api)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.cookie)
            (hsPkgs.cryptonite)
            (hsPkgs.dhall)
            (hsPkgs.directory)
            (hsPkgs.ed25519)
            (hsPkgs.fsnotify)
            (hsPkgs.here)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lzma-conduit)
            (hsPkgs.megaparsec)
            (hsPkgs.memory)
            (hsPkgs.mmorph)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.resourcet)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.servant-auth-client)
            (hsPkgs.servant-client)
            (hsPkgs.servant-client-core)
            (hsPkgs.servant-streaming-client)
            (hsPkgs.streaming)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.uri-bytestring)
            (hsPkgs.versions)
          ];
        };
      };
    };
  }