{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3.1";
      identifier = { name = "ChristmasTree"; version = "0.2.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/TTTAS";
      url = "";
      synopsis = "Alternative approach of 'read' that composes grammars instead of parsers.";
      description = "ChristmasTree (Changing Haskell's Read Implementation Such That by Mainpulating ASTs it Reads Expressions Efficiently) is an alternative approach of 'read' that composes grammars instead of parsers. It reads data in linear time, while the function 'read' has an exponential behavior in some cases of data types with infix operators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."TTTAS" or ((hsPkgs.pkgs-errors).buildDepError "TTTAS"))
          (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
          ];
        buildable = true;
        };
      };
    }