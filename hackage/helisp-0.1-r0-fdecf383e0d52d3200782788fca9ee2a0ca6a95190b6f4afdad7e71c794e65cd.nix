{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "helisp"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Jason Dagit <dagit@codersbase.com>";
      homepage = "http://www.codersbase.com/index.php/Helisp";
      url = "";
      synopsis = "An incomplete Elisp compiler";
      description = "This is an incomplete compiler for Emacs Lisp;\nthe source might be of interest to others.\n\nThe Darcs repository can be found at\n<http://projects.codersbase.com/repos/helisp>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "helisp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }