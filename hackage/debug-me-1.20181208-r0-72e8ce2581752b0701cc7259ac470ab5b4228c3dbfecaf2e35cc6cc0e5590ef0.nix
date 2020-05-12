{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "debug-me"; version = "1.20181208"; };
      license = "AGPL-3.0-only";
      copyright = "2017 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "https://debug-me.branchable.com/";
      url = "";
      synopsis = "secure remote debugging";
      description = "Debugging a problem over email/irc/BTS is slow, tedious, and hard. The developer\nneeds to see your problem to understand it. Debug-me aims to make debugging\nfast, fun, and easy, by letting the developer access your computer remotely,\nso they can immediately see and interact with the problem. Making your\nproblem their problem gets it fixed fast.\n\nA debug-me session is logged and signed with the developer's GnuPG\nkey, producing a chain of evidence of what they saw and what they did.\nSo the developer's good reputation is leveraged to make debug-me secure.\nIf you trust a developer to ship software to your computer,\nyou can trust them to debug-me.\n\nWhen you start debug-me without any options, it will connect to a debug-me\nserver, and print out an url that you can give to the developer to get\nthem connected to you. Then debug-me will show you their GnuPG key and who\nhas signed it, and will let you know if they are a known developer\nof software on your computer. If the developer has a good reputation,\nyou can proceed to let them type into your console in a debug-me session.\nOnce the session is done, the debug-me server will email you the signed\nevidence of what the developer did in the session.\n\nIf the developer did do something bad, you'd have proof that they cannot\nbe trusted, which you can share with the world. Knowing that is the case\nwill keep most developers honest.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        ];
      };
    components = {
      exes = {
        "debug-me" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."posix-pty" or (errorHandler.buildDepError "posix-pty"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."protobuf" or (errorHandler.buildDepError "protobuf"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }