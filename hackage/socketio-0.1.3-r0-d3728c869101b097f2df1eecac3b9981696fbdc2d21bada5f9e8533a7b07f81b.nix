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
      specVersion = "1.8";
      identifier = {
        name = "socketio";
        version = "0.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "banacorn@gmail.com";
      author = "Ting-Yen Lai";
      homepage = "";
      url = "";
      synopsis = "Socket.IO server";
      description = "Socket.IO for Haskell folks.\n\n[Socket.IO] <http://socket.io/>\n\n[Protocol] <https://github.com/LearnBoost/socket.io-spec>\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.SocketIO\n\n\\-\\- listens to port 4000\nmain = server 4000 \$ do\n\n&#32;&#32;&#32;&#32;\\-\\- ping pong\n&#32;&#32;&#32;&#32;on &#34;ping&#34; \$ emit &#34;pong&#34; []\n\n&#32;&#32;&#32;&#32;\\-\\- msg :: CallbackM [Text]\n&#32;&#32;&#32;&#32;on &#34;echo&#34; \$ msg >>= emit &#34;pong&#34;\n\n&#32;&#32;&#32;&#32;\\-\\- do some IO\n&#32;&#32;&#32;&#32;on &#34;Kim Jong-Un&#34; \$ liftIO launchMissile\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.aeson)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.attoparsec)
          (hsPkgs.ansi-terminal)
          (hsPkgs.unordered-containers)
          (hsPkgs.random)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "socketio-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.scientific)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.aeson)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.attoparsec)
            (hsPkgs.ansi-terminal)
            (hsPkgs.unordered-containers)
            (hsPkgs.random)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.transformers-base)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-base)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }