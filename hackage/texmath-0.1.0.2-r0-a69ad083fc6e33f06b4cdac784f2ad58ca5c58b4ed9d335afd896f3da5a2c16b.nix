{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cgi = true; test = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "texmath"; version = "0.1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion of LaTeX math formulas to MathML.";
      description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML. It supports\nbasic LaTeX and AMS extensions, but not macros.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "testTeXMathML" = { buildable = if flags.test then true else false; };
        "texmath-cgi" = {
          depends = [
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            ];
          buildable = if flags.cgi then true else false;
          };
        };
      };
    }