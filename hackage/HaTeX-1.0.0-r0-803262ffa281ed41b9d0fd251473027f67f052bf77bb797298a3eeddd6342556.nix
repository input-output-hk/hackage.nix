{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "HaTeX"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lazy.ddiaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Library for generate LaTeX code.";
      description = "You can write LaTeX files using this package.\nSee Text.LaTeX for a brief introduction.\n\nIt's a first version,\nand documentation is in process,\nbut you can test the library and report me any bug or suggestion at:\n\nlazy.ddiaz\\@gmail.com\n\nAlso, if you have an example where you use HaTeX, you could send it to my email. Thank you.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."dstring" or ((hsPkgs.pkgs-errors).buildDepError "dstring"))
          (hsPkgs."to-string-class" or ((hsPkgs.pkgs-errors).buildDepError "to-string-class"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }