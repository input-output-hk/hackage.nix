{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tablize"; version = "1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2017 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/tablize";
      url = "";
      synopsis = "Pretty-printing of CSV files";
      description = "Command-line utility to pretty-print CSV files with custom\nvisual decoration and column alignments.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tablize" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.comma)
            (hsPkgs.optparse-applicative)
            (hsPkgs.tabl)
            (hsPkgs.text)
            ];
          };
        };
      };
    }