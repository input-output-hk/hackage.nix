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
    flags = { tls = true; fastcgi = false; unixsockets = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-cli"; version = "0.2.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017-2021 unrelentingtech <hello@unrelenting.technology>";
      maintainer = "hello@unrelenting.technology";
      author = "unrelentingtech";
      homepage = "https://codeberg.org/unrelentingtech/wai-cli";
      url = "";
      synopsis = "Command line runner for Wai apps (using Warp) with TLS, CGI, socket activation & graceful shutdown";
      description = "Command line runner for Wai apps (using Warp) with support for UNIX domain sockets,\nTLS (can be turned off with a cabal flag to avoid compiling the TLS library), CGI,\nsocket activation (systemd-compatible, but see https://codeberg.org/unrelentingtech/soad for a more interesting (and not linux-only) thing than what systemd does),\nand graceful shutdown (on TERM signal).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."options" or (errorHandler.buildDepError "options"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
        ] ++ pkgs.lib.optional (flags.tls) (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))) ++ pkgs.lib.optional (flags.fastcgi) (hsPkgs."wai-handler-fastcgi" or (errorHandler.buildDepError "wai-handler-fastcgi"))) ++ pkgs.lib.optionals (!system.isWindows && flags.unixsockets) [
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }