{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "yjftp"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/yjftp/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/yjftp-0.3.tar.gz";
      synopsis = "CUI FTP client like 'ftp', 'ncftp'";
      description = "FTP client\nJust CUI FTP client";
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
          ];
        };
      exes = { "yjftp" = { depends = [ (hsPkgs.hsConfigure) ]; }; };
      };
    }