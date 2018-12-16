{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tls = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-cli";
        version = "0.1.1";
      };
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
          (hsPkgs.base)
          (hsPkgs.options)
          (hsPkgs.warp)
          (hsPkgs.socket-activation)
          (hsPkgs.streaming-commons)
          (hsPkgs.http-types)
          (hsPkgs.monads-tf)
          (hsPkgs.stm)
          (hsPkgs.unix)
          (hsPkgs.network)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.ansi-terminal)
        ] ++ pkgs.lib.optional (flags.tls) (hsPkgs.warp-tls);
      };
    };
  }