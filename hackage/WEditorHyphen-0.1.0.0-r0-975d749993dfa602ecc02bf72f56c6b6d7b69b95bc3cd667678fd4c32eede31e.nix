{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "WEditorHyphen"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2020";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/wrapping-editor";
      url = "";
      synopsis = "Language-specific hyphenation policies for WEditor.";
      description = "This package provides language-specific hyphenation policies for use with\nthe <https://github.com/ta0kira/wrapping-editor WEditor> and\n<https://github.com/ta0kira/wrapping-editor WEditorBrick> packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hyphenation" or ((hsPkgs.pkgs-errors).buildDepError "hyphenation"))
          (hsPkgs."WEditor" or ((hsPkgs.pkgs-errors).buildDepError "WEditor"))
          ];
        buildable = true;
        };
      tests = {
        "WEditorHyphen-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hyphenation" or ((hsPkgs.pkgs-errors).buildDepError "hyphenation"))
            (hsPkgs."WEditor" or ((hsPkgs.pkgs-errors).buildDepError "WEditor"))
            (hsPkgs."WEditorHyphen" or ((hsPkgs.pkgs-errors).buildDepError "WEditorHyphen"))
            ];
          buildable = true;
          };
        };
      };
    }