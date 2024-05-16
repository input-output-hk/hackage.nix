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
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "mailbox-count"; version = "1.8.7"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "https://michael.orlitzky.com/code/mailbox-count.xhtml";
      url = "";
      synopsis = "Count mailboxes in a SQL database";
      description = "= WARNING\n\nThis package is no longer maintained on Hackage. Please obtain it\nfrom [the mailbox-count\nhomepage](https://michael.orlitzky.com/code/mailbox-count.xhtml)\ninstead. I am unable to delete my Hackage account or any of my\npackages; any further activity on Hackage should be considered\nmalicious.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mailbox-count" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }