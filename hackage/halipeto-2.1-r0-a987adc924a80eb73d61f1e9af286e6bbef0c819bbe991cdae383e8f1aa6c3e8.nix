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
      identifier = { name = "halipeto"; version = "2.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2004-2008 Andrew Cooke <andrew@acooke.org>\n(c) 2007-2010 Peter Simons <simons@cryp.to>";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Andrew Cooke <andrew@acooke.org>, Peter Simons <simons@cryp.to>";
      homepage = "http://gitorious.org/halipeto";
      url = "";
      synopsis = "Haskell Static Web Page Generator";
      description = "A library for generating static HTML pages from XML\ntemplates and a file-based value dictionary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
        ];
        buildable = true;
      };
    };
  }