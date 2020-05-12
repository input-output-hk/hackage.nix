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
      specVersion = "0";
      identifier = { name = "xml-parsec"; version = "1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Stephan Friedrichs <deduktionstheorem [at] web.de>";
      author = "Stephan Friedrichs,\nHenning Günther,\nOliver Mielentz,\nMartin Wegner";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "Parsing XML with Parsec";
      description = "Helper functions to use a Parsec-based parser for XML documents.\nThis was originally developed as part of the Barracuda\nad-hoc P2P chat client.\n\nThe Darcs repository can be found at <http://darcs.mroot.net/sep07-adhoc/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ];
        buildable = true;
        };
      };
    }