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
      identifier = { name = "BlogLiterately"; version = "0.8.4.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) Robert Greayer 2008-2010, Brent Yorgey 2012-2016";
      maintainer = "Brent Yorgey <byorgey@gmail.com>";
      author = "Robert Greayer <robgreayer@yahoo.com>, Brent Yorgey";
      homepage = "http://byorgey.wordpress.com/blogliterately/";
      url = "";
      synopsis = "A tool for posting Haskelly articles to blogs";
      description = "Write blog posts in Markdown format, then use BlogLiterately\nto do syntax highlighting, format ghci sessions, and upload\nto any blog supporting the metaWeblog API (such as Wordpress):\n<http://codex.wordpress.org/XML-RPC_MetaWeblog_API>.\n\nTo get started, use the provided executable\n@BlogLiterately@; see\n<http://byorgey.wordpress.com/blogliterately/> for\ncomplete documentation.\n\nTo make further customization possible, the internals\nof the executable are made available as a library.  In\nparticular, it is easy to create your own executable\nwhich adds extra custom transformations; see\n\"Text.BlogLiterately.Run\".";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bool-extras" or (errorHandler.buildDepError "bool-extras"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."pandoc-citeproc" or (errorHandler.buildDepError "pandoc-citeproc"))
          (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
        buildable = true;
        };
      exes = {
        "BlogLiterately" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."BlogLiterately" or (errorHandler.buildDepError "BlogLiterately"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }