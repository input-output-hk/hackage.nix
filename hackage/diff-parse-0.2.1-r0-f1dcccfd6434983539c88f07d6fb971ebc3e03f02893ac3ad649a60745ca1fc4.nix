{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "diff-parse";
        version = "0.2.1";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Gabe Mulley <gabe@edx.org>";
      author = "Gabe Mulley <gabe@edx.org>";
      homepage = "";
      url = "";
      synopsis = "A parser for diff file formats";
      description = "Parse output produced by git diff.";
      buildType = "Simple";
    };
    components = {
      "diff-parse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.diff-parse)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }