{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "flowdock-api"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Gabriel McArthur 2013";
      maintainer = "gabriel.mcarthur@gmail.com";
      author = "Gabriel McArthur";
      homepage = "https://github.com/gabemc/flowdock-api";
      url = "";
      synopsis = "API integration with Flowdock.";
      description = "This library uses the Network.HTTP.Client library to interact\nwith the FlowDock chat service.\n\n* Push API - <https://www.flowdock.com/api/team-inbox>\n\n* Streaming API - <https://www.flowdock.com/api/streaming>\n\n* REST API - <https://www.flowdock.com/api/rest>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.http-streams)
          (hsPkgs.http-types)
          (hsPkgs.io-streams)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.monad-logger)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "flowdock" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.http-streams)
            (hsPkgs.http-types)
            (hsPkgs.io-streams)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.http-streams)
            (hsPkgs.http-types)
            (hsPkgs.io-streams)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.monad-logger)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.heredoc)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }