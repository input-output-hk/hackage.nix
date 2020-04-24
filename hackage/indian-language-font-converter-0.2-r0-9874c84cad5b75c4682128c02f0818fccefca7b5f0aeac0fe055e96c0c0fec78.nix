{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "indian-language-font-converter";
        version = "0.2";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Akash Fulchand Jagdhane";
      author = "Akash Fulchand Jagdhane";
      homepage = "";
      url = "";
      synopsis = "Indian Language Font Converter";
      description = "The package is made for people who want to get the sentences in Hindi, Marathi, Kannada, Gujarati, Bengali, Telugu, Malayalam, Punjabi, Oriya font so that they don't need to remember keys on keyboards when they type these scripts. Or they don't need to waste time on virtual keyboards where everything works with a mouse.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        buildable = true;
        };
      };
    }