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
      specVersion = "1.6";
      identifier = { name = "docidx"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Andy Gimblett <haskell@gimbo.org.uk>, Andy Price <andy@andrewprice.me.uk>";
      maintainer = "Andy Gimblett <haskell@gimbo.org.uk>";
      author = "Andy Gimblett <haskell@gimbo.org.uk>, Andy Price <andy@andrewprice.me.uk>";
      homepage = "http://github.com/gimbo/docidx.hs";
      url = "";
      synopsis = "Generate an HTML index of installed Haskell packages and their documentation.";
      description = "docidx is a small tool which creates an HTML index of your\ninstalled Haskell packages, with links to each package's Haddock\ndocs locally and on Hackage.  While \"cabal install\" now creates\nand maintains an index by module, sometimes it's nice to have this\nother view (and the quick links to Hackage).\ndocidx queries your global and user package databases (via\nghc-pkg, via the Cabal package), to build an index of all\ninstalled packages - including version numbers where more than one\nversion is present, package synopses, links to the local Haddock\ndocs, and a link to the package on Hackage.\nPackages are grouped by first letter, and there's an A-Z index at\nthe top of the page, which can be easily extended via a config\nfile to include extra links you think are handy - e.g. to the\nper-module index, to local ghc documentation, to the Haskell\nreport, etc. - whatever you want).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "docidx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }