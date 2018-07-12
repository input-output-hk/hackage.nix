{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yjftp-libs";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo";
        homepage = "http://homepage3.nifty.com/salamander/second/projects/yjftp/index.xhtml";
        url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/yjftp-0.3.4.tar.gz";
        synopsis = "CUI FTP client like 'ftp', 'ncftp'";
        description = "It will be library for yjftp.\n\nExecutable 'yjftp-ni\" is sample. It may be removed.\n\nyjftp-ni is command line FTP client.\n\nIf no arguments, then it ask server address, user name and password.\n\nIf only argument server address are given, then it try login as anonymous user.\n\nIf argument server address and user name, then it ask password.\n\nAnd password can give by '-p [passwd]' from command line.\n\nYou can put or get immediately by doing following.\n\nyjftp-ni put filepath srvr.address/directorypath [user_name] [-p password]\n\nyjftp-ni get srvr.address/filepath [user_name] [-p password]";
        buildType = "Simple";
      };
      components = {
        "yjftp-libs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.ftphs
            hsPkgs.mtl
          ];
        };
        exes = { "yjftp-ni" = {}; };
      };
    }