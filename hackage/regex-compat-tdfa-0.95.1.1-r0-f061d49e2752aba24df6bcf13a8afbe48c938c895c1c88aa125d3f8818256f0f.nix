{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { newbase = true; splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-compat-tdfa"; version = "0.95.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Christopher Kuklewicz 2006\n(c) shelarcy 2012";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Christopher Kuklewicz";
      homepage = "http://darcsden.com/shelarcy/regex-compat-tdfa";
      url = "http://darcsden.com/shelarcy/regex-compat-tdfa";
      synopsis = "Unicode Support version of Text.Regex, using regex-tdfa";
      description = "One module layer over regex-tdfa to replace Text.Regex.\n\nregex-compat can't use Unicode characters correctly because\nof using regex-posix. This is not good for Unicode users.\n\nI modified regex-compat to use regex-tdfa for solving today's\nproblem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.newbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ]
          else if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
              (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
              (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
              ];
        buildable = true;
        };
      };
    }