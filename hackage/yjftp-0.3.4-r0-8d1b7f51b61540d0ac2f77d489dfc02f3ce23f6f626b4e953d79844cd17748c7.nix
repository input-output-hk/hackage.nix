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
      specVersion = "1.2";
      identifier = {
        name = "yjftp";
        version = "0.3.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/yjftp/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/yjftp-0.3.4.tar.gz";
      synopsis = "CUI FTP client like 'ftp', 'ncftp'";
      description = "Just CUI FTP client.\n\nIf no arguments, then it ask server address, user name and password.\n\nIf only argument server address are given, then it try login as anonymous user.\n\nIf argument server address and user name, then it ask password.\n\nAnd password can give by '-p [passwd]' from command line.\n\nOnce login, you can run command 'ls', 'cd', 'cat', 'put', 'get', 'edit', 'show'\nand so on.\n\nAnd you can put or get immediately by doing following.\n\n> yjftp put filepath srvr.address/directorypath [user_name] [-p password]\n\n> yjftp get srvr.address/filepath [user_name] [-p password]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.ftphs)
          (hsPkgs.readline)
        ];
      };
      exes = {
        "yjftp" = {
          depends = [
            (hsPkgs.hsConfigure)
          ];
        };
      };
    };
  }