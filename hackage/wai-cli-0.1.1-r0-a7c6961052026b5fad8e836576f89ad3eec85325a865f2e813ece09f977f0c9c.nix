{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tls = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-cli"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017 Greg V <greg@unrelenting.technology>";
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."options" or ((hsPkgs.pkgs-errors).buildDepError "options"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."socket-activation" or ((hsPkgs.pkgs-errors).buildDepError "socket-activation"))
          (hsPkgs."streaming-commons" or ((hsPkgs.pkgs-errors).buildDepError "streaming-commons"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          ] ++ (pkgs.lib).optional (flags.tls) (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"));
        buildable = true;
        };
      };
    }