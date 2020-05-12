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
    flags = { testprog = false; download = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tagsoup"; version = "0.11.1"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2010";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/tagsoup/";
      url = "";
      synopsis = "Parsing and extracting information from (possibly malformed) HTML/XML documents";
      description = "TagSoup is a library for parsing HTML/XML. It supports the HTML 5 specification,\nand can be used to parse either well-formed XML, or unstructured and malformed HTML\nfrom the web. The library also provides useful functions to extract information\nfrom an HTML document, making it ideal for screen-scraping.\n\nUsers should start from the \"Text.HTML.TagSoup\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (flags.download) (hsPkgs."network" or (errorHandler.buildDepError "network"));
        buildable = true;
        };
      exes = {
        "tagsoup" = {
          depends = (pkgs.lib).optionals (flags.testprog) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ];
          buildable = if flags.testprog then true else false;
          };
        };
      };
    }