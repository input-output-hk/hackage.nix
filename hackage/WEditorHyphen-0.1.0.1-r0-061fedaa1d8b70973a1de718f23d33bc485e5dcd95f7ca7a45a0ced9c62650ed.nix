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
      specVersion = "2.0";
      identifier = { name = "WEditorHyphen"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2020";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/wrapping-editor";
      url = "";
      synopsis = "Language-specific hyphenation policies for WEditor.";
      description = "This package provides language-specific hyphenation policies for use with\nthe @<http://hackage.haskell.org/package/WEditor WEditor>@ and\n@<http://hackage.haskell.org/package/WEditorBrick WEditorBrick>@ packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hyphenation" or (errorHandler.buildDepError "hyphenation"))
          (hsPkgs."WEditor" or (errorHandler.buildDepError "WEditor"))
        ];
        buildable = true;
      };
      tests = {
        "WEditorHyphen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hyphenation" or (errorHandler.buildDepError "hyphenation"))
            (hsPkgs."WEditor" or (errorHandler.buildDepError "WEditor"))
            (hsPkgs."WEditorHyphen" or (errorHandler.buildDepError "WEditorHyphen"))
          ];
          buildable = true;
        };
      };
    };
  }