{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "deunicode"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Franksen <ben.franksen@online.de>";
      author = "Ben Franksen <ben.franksen@online.de>";
      homepage = "";
      url = "";
      synopsis = "Get rid of unicode (utf-8) symbols in Haskell sources";
      description = "A very simple-minded program to replace utf-8 encoded\nunicode operators in Haskell source files with their\nequivalent in ascii. It takes no arguments and acts as\na pure filter from stdin to stdout.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "deunicode" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }