{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "WEditor"; version = "0.2.1.1"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2020";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/wrapping-editor";
      url = "";
      synopsis = "Generic text-editor logic for use with fixed-width fonts.";
      description = "This package contains interfaces and implementations of text-editing idioms\nthat can be wired up to UI libraries to create text-editor widgets.\n\nThe goal is to provide:\n\n* Automatic management of a dynamically-sized viewable area, with preservation\nof the cursor position and minimal view disruption during resizing.\n* Customizable line-wrapping policies and word-hyphenation policies.\n* Support for user-defined character types.\n\nAlso see @<http://hackage.haskell.org/package/WEditorHyphen WEditorHyphen>@\nfor language-specific hyphenation rules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."WEditor-internal" or ((hsPkgs.pkgs-errors).buildDepError "WEditor-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "WEditor-internal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "WEditor-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."WEditor-internal" or ((hsPkgs.pkgs-errors).buildDepError "WEditor-internal"))
            ];
          buildable = true;
          };
        };
      };
    }