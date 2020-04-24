{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "snm"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Morrice <spoon@killersmurf.com>";
      author = "John Morrice <spoon@killersmurf.com>";
      homepage = "http://github.com/elginer/snm";
      url = "";
      synopsis = "The Simple Nice-Looking Manual Generator.";
      description = "snm allows you to write clean, web-friendly reports, user guides and manuals without having to edit fickle html.\n\nsnm allows you to structure your document in a modular fashion.\n\nsnm document sections are written in yaml and are easy to write and understand.\n\nsnm is a generator of small, valid xhtml files.\n\nRead the snm manual online: http://www.killersmurf.com/static/snm_help.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."HsSyck" or ((hsPkgs.pkgs-errors).buildDepError "HsSyck"))
          (hsPkgs."spoonutil" or ((hsPkgs.pkgs-errors).buildDepError "spoonutil"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          ];
        buildable = true;
        };
      exes = {
        "snm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HsSyck" or ((hsPkgs.pkgs-errors).buildDepError "HsSyck"))
            (hsPkgs."spoonutil" or ((hsPkgs.pkgs-errors).buildDepError "spoonutil"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }