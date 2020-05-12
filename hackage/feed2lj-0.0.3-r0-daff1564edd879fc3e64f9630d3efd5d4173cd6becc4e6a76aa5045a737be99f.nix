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
    flags = { nano-md5 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "feed2lj"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/feed2ljhs/";
      url = "";
      synopsis = "Cross-post any RSS/Atom feed to LiveJournal";
      description = "A script to cross-post any RSS/Atom Feed to LiveJournal.\n\nAll HTML tags are merely stripped from the original.\nImages are replaced with their ALT attributes.\n\nCONFIGURATION\n\nCreate a file named `~/.ljpass` with your LJ login\n(`username`) and `password`. GUIDs of the processed\nmessage are saved to the file defined by `sentfile`.\nAdditionally, define an HTML `template` of the cross-posted\nmessages as they should appear in LJ.\nOption `nsentences`, if defined, specifies how many\nsentences of the original message are to be cross-posted.\n\nFor example:\n\n> username=myljlogin\n> password=myljpassword\n> sentfile=/path/to/file/where/crossposted/GUIDs/are/saved\n> template=<p>%text%</p><p>( <a href=\"%link%\" title=\"%title%\">more</a> )</p>\n> nsentences=5\n\nUSAGE\n\n> \$ feed2lj [--help] [--dry-run] http://example.com/rss.xml\n\nUse `--dry-run` option to preview results without actually\nposting to LJ.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "feed2lj" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            ] ++ (if flags.nano-md5
            then [
              (hsPkgs."nano-md5" or (errorHandler.buildDepError "nano-md5"))
              ]
            else [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              ]);
          buildable = true;
          };
        };
      };
    }