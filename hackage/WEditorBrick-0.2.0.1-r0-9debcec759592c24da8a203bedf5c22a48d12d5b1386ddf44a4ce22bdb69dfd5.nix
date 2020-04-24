{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "WEditorBrick"; version = "0.2.0.1"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2020";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/wrapping-editor";
      url = "";
      synopsis = "Text-editor widget with dynamic line-wrapping for use with Brick.";
      description = "This package provides a text-editor widget for\n@<http://hackage.haskell.org/package/brick brick>@  that supports line\nwrapping with dynamic resizing. The editor functionality is extensible (e.g.,\ncustom wrapping and hyphenation) via the\n@<http://hackage.haskell.org/package/WEditor WEditor>@ package.\n\nAlso see @<http://hackage.haskell.org/package/WEditorHyphen WEditorHyphen>@\nfor  language-specific hyphenation rules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."WEditor" or ((hsPkgs.pkgs-errors).buildDepError "WEditor"))
          ];
        buildable = true;
        };
      exes = {
        "brick-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."WEditorBrick" or ((hsPkgs.pkgs-errors).buildDepError "WEditorBrick"))
            (hsPkgs."WEditor" or ((hsPkgs.pkgs-errors).buildDepError "WEditor"))
            ];
          buildable = true;
          };
        };
      };
    }