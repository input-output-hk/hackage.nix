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
      specVersion = "1.10";
      identifier = { name = "ureader"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam T.";
      maintainer = "Sam T. <pxqr.sta@gmail.com>";
      author = "Sam T.";
      homepage = "https://github.com/pxqr/ureader";
      url = "";
      synopsis = "Minimalistic CLI RSS reader.";
      description = "`ureader` is minimalistic command line RSS reader with unicode\nand color support. Everything it does is fetch RSS documents,\nmerge them according to specified options, format and flush\nresulting feed to stdout. So `ureader` could be used with\npagers like `more(1)` or in linux terminal.\n\n[/Release Notes/]\n\n* /0.1.0.0:/ Initial version.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ureader" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."implicit-params" or (errorHandler.buildDepError "implicit-params"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            ];
          buildable = true;
          };
        };
      };
    }