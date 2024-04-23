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
      identifier = { name = "WEditorBrick"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2020";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/wrapping-editor";
      url = "";
      synopsis = "Text-editor widget with dynamic line-wrapping for use with Brick.";
      description = "This package provides a text-editor widget for\n<https://github.com/jtdaugherty/brick Brick> that supports line wrapping with\ndynamic resizing. The editor functionality is extensible (e.g., custom\nwrapping and hyphenation) via the\n<https://github.com/ta0kira/wrapping-editor WEditor> package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."WEditor" or (errorHandler.buildDepError "WEditor"))
        ];
        buildable = true;
      };
      exes = {
        "brick-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."WEditorBrick" or (errorHandler.buildDepError "WEditorBrick"))
            (hsPkgs."WEditor" or (errorHandler.buildDepError "WEditor"))
          ];
          buildable = true;
        };
      };
    };
  }