{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "socketio"; version = "0.1.3"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "socketio-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }