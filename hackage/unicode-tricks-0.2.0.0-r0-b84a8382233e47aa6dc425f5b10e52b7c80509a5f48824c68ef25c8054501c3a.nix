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
      identifier = { name = "unicode-tricks"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Willem Van Onsem";
      maintainer = "hapytexeu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/unicode-tricks#readme";
      url = "";
      synopsis = "Functions to work with unicode blocks more convenient.";
      description = "A package that makes rendering of frames, blocks, subscript and superscript\nmore convenient.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }