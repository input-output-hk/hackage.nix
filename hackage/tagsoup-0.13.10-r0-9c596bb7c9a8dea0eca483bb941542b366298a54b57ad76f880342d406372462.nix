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
    flags = { testprog = false; download = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tagsoup"; version = "0.13.10"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2016";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/tagsoup#readme";
      url = "";
      synopsis = "Parsing and extracting information from (possibly malformed) HTML/XML documents";
      description = "TagSoup is a library for parsing HTML/XML. It supports the HTML 5 specification,\nand can be used to parse either well-formed XML, or unstructured and malformed HTML\nfrom the web. The library also provides useful functions to extract information\nfrom an HTML document, making it ideal for screen-scraping.\n\nUsers should start from the \"Text.HTML.TagSoup\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.download) (hsPkgs."network" or (errorHandler.buildDepError "network"));
        buildable = true;
        };
      exes = {
        "test-tagsoup" = {
          depends = (pkgs.lib).optionals (flags.testprog) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = if flags.testprog then true else false;
          };
        };
      };
    }