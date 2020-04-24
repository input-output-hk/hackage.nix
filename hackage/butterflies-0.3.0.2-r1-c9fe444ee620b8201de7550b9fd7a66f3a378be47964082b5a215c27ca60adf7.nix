{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "butterflies"; version = "0.3.0.2"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2013,2018  Claude Heiland-Allen <claude@mathr.co.uk>";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/butterflies";
      url = "";
      synopsis = "butterfly tilings";
      description = "various tilings with butterflies (after M C Escher 1950)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "butterflies-flat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."gl-capture" or ((hsPkgs.pkgs-errors).buildDepError "gl-capture"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-devil" or ((hsPkgs.pkgs-errors).buildDepError "repa-devil"))
            (hsPkgs."butterflies" or ((hsPkgs.pkgs-errors).buildDepError "butterflies"))
            ];
          buildable = true;
          };
        };
      };
    }