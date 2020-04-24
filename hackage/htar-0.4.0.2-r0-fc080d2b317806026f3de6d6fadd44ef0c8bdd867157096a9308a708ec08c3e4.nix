{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "htar"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>\n2008-2015 Duncan Coutts <duncan@community.haskell.org>";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Bjorn Bringert <bjorn@bringert.net>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Command-line tar archive utility.";
      description = "A Command-line utility to create, extract and list the\ncontents of tar archives. It can work with compressed\narchives using gzip or bzip2 compression.\n\nThis is in part a demo of the @tar@ library but it is also\nusable in place of the ordinary @tar@ program for systems\nlike Windows that do not come with it as standard.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."bzlib" or ((hsPkgs.pkgs-errors).buildDepError "bzlib"))
            ] ++ (if flags.old-locale
            then [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ]);
          buildable = true;
          };
        };
      };
    }