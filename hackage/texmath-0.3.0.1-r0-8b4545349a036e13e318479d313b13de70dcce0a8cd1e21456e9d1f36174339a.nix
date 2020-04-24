{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cgi = false; test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "texmath"; version = "0.3.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion of LaTeX math formulas to MathML.";
      description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML. It supports\nbasic LaTeX and AMS extensions, but not macros.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "testTeXMathML" = { buildable = if flags.test then true else false; };
        "texmath-cgi" = {
          depends = [
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optionals (flags.cgi) [
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            ];
          buildable = if flags.cgi then true else false;
          };
        };
      };
    }