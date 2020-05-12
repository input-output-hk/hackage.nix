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
      identifier = { name = "BlogLiterately"; version = "0.5.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Robert Greayer 2008-2010, Brent Yorgey 2012";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
      author = "Robert Greayer <robgreayer@yahoo.com>";
      homepage = "http://byorgey.wordpress.com/blogliterately/";
      url = "";
      synopsis = "A tool for posting Haskelly articles to blogs";
      description = "Write blog posts in Markdown format, then use BlogLiterately\nto do syntax highlighting, format ghci sessions, and upload\nto any blog supporting the metaWeblog API (such as Wordpress).\n\nTo get started, use the provided executable\n@BlogLiterately@; see\n<http://byorgey.wordpress.com/blogliterately/> for\ncomplete documentation.\n\nTo make further customization possible, the internals\nof the executable are made available as a library.  In\nparticular, it is easy to create your own executable\nwhich adds extra custom transformations; see\n\"Text.BlogLiterately.Run\".\n\nNote that BlogLiterately depends on blaze-html-0.5.\nPandoc 1.9.3 and later can depend on either\nblaze-html-0.4 or blaze-html-0.5, but the latter only\nin case the blaze_html_0_5 flag is set.  If pandoc is\ninstalled as a dependency of BlogLiterately,\neverything should work out fine, since cabal's\nconstraint solver will figure out to set that flag.\nBut if pandoc is already installed against\nblaze-html-0.4 you may need to reinstall it with the\nblaze_html_0_5 flag explicitly set.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          ];
        buildable = true;
        };
      exes = {
        "BlogLiterately" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."BlogLiterately" or (errorHandler.buildDepError "BlogLiterately"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }