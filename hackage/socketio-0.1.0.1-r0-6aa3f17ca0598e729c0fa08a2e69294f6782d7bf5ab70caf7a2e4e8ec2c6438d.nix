{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "socketio"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "banacorn@gmail.com";
      author = "Ting-Yen Lai";
      homepage = "";
      url = "";
      synopsis = "Socket.IO server";
      description = "Socket.IO for Haskell folks.\n\n[Socket.IO] <http://socket.io/>\n\n[Protocol] <https://github.com/LearnBoost/socket.io-spec>\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.SocketIO\n\n\\-\\- listens to port 4000\nmain = server 4000 \$ do\n\n&#32;&#32;&#32;&#32;\\-\\- ping pong\n&#32;&#32;&#32;&#32;on &#34;ping&#34; \$ emit &#34;pong&#34; []\n\n&#32;&#32;&#32;&#32;\\-\\- reply :: CallbackM [Text]\n&#32;&#32;&#32;&#32;on &#34;echo&#34; \$ reply >>= emit &#34;pong&#34;\n\n&#32;&#32;&#32;&#32;\\-\\- do some IO\n&#32;&#32;&#32;&#32;on &#34;Kim Jong-Un&#34; \$ liftIO launchMissile\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          ];
        buildable = true;
        };
      };
    }