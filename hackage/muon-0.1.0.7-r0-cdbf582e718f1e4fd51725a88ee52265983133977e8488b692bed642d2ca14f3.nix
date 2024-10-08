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
      specVersion = "1.8";
      identifier = { name = "muon"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kaashif Hymabaccus";
      maintainer = "kaashif@kaashif.co.uk";
      author = "Kaashif Hymabaccus";
      homepage = "http://github.com/kaashif-hymabaccus/muon";
      url = "";
      synopsis = "Static blog generator";
      description = "Program which takes blog posts and pages written in Markdown and\ncompiles them into a tree of HTML pages which can then be served\nby any web server.\n\nAs of now, Muon supports:\n\n* Generating a site from Markdown and HTML\n\n* Previewing a site locally using happstack-server\n\n* Uploading a site to a server using rsync\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "muon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."markdown" or (errorHandler.buildDepError "markdown"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
          buildable = true;
        };
      };
    };
  }