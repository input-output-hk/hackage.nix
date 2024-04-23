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
      identifier = { name = "text-cp437"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Christopher Lord (Pliosoft), All Rights Reserved";
      maintainer = "christopher@pliosoft.com";
      author = "Christopher Lord";
      homepage = "https://github.com/pliosoft/text-cp437#readme";
      url = "";
      synopsis = "Conversion of Text to and from CP437";
      description = "Some devices such as receipt printers require\ntext encoded in CP437.\nThis library can help convert regular UTF\nsymbols to and from this format.\nSee <https://en.wikipedia.org/wiki/Code_page_437>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "text-cp437-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text-cp437" or (errorHandler.buildDepError "text-cp437"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
          ];
          buildable = true;
        };
      };
    };
  }