{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "type-errors-pretty"; version = "0.0.1.0"; };
      license = "MPL-2.0";
      copyright = "2019 Dmitrii Kovanikov";
      maintainer = "Dmitrii Kovanikov <kovanikov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/chshersh/type-errors-pretty";
      url = "";
      synopsis = "Combinators for writing pretty type errors easily";
      description = "This library provides replacements for the @ErrorMessage@ constructors to\nwrite the text of custom error messages easily.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }