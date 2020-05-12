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
    flags = { tls = true; fastcgi = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-cli"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017-2019 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/wai-cli";
      url = "";
      synopsis = "Command line runner for Wai apps (using Warp) with TLS, CGI, socket activation & graceful shutdown";
      description = "Command line runner for Wai apps (using Warp) with support for UNIX domain sockets,\nTLS (can be turned off with a cabal flag to avoid compiling the TLS library), CGI,\nsocket activation (systemd-compatible, but see https://github.com/myfreeweb/soad for a more interesting (and not linux-only) thing than what systemd does),\nand graceful shutdown (on TERM signal).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."options" or (errorHandler.buildDepError "options"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."socket-activation" or (errorHandler.buildDepError "socket-activation"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          ] ++ (pkgs.lib).optional (flags.tls) (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))) ++ (pkgs.lib).optional (flags.fastcgi) (hsPkgs."wai-handler-fastcgi" or (errorHandler.buildDepError "wai-handler-fastcgi"));
        buildable = true;
        };
      };
    }