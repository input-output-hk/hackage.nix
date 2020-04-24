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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."ftphs" or ((hsPkgs.pkgs-errors).buildDepError "ftphs"))
          ];
        buildable = true;
        };
      exes = {
        "yjftp" = {
          depends = [
            (hsPkgs."hsConfigure" or ((hsPkgs.pkgs-errors).buildDepError "hsConfigure"))
            ];
          buildable = true;
          };
        };
      };
    }