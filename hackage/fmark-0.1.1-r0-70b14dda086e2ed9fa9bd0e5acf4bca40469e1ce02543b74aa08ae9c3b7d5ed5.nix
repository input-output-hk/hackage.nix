{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fmark"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "José Lopes <jabolopes AT gmail DOT com>";
      author = "José Lopes";
      homepage = "http://github.com/jabolopes/fmark";
      url = "";
      synopsis = "A Friendly Markup language without syntax.";
      description = "Fmark (Friendly Markup) is a very simple markup language without\nsyntax and simple but sophisticated document styling, capable of\nproducing PDF and XML files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."Unixutils" or ((hsPkgs.pkgs-errors).buildDepError "Unixutils"))
            ];
          buildable = true;
          };
        };
      };
    }