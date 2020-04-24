{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { nano-md5 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "feed2lj"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/feed2ljhs/";
      url = "";
      synopsis = "Cross-post any RSS/Atom feed to LiveJournal";
      description = "A script to cross-post any RSS/Atom Feed to LiveJournal.\n\nAll HTML tags are merely stripped from the original. By\ndefault the script takes only the first 5 sentences of\nthe original message. You may need to edit source to change\nthis behaviour.\n\nCONFIGURATION\n\nCreate a file named `~/.ljpass` with your LJ login\n(`username`) and `password`. GUIDs of the processed\nmessage are saved to the file defined by `sentfile`.\nAdditionally, define an HTML `template` of the cross-posted\nmessages as they should appear in LJ.\n\nFor example:\n\n> username=myljlogin\n> password=myljpassword\n> sentfile=/path/to/file/where/crossposted/GUIDs/are/saved\n> template=<p>%text%</p><p>( <a href=\"%link%\" title=\"%title%\">more</a> )</p>\n\nUSAGE\n\n> \$ feed2lj http://example.com/rss.xml";
      buildType = "Simple";
      };
    components = {
      exes = {
        "feed2lj" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
            ] ++ (if flags.nano-md5
            then [
              (hsPkgs."nano-md5" or ((hsPkgs.pkgs-errors).buildDepError "nano-md5"))
              ]
            else [
              (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
              ]);
          buildable = true;
          };
        };
      };
    }