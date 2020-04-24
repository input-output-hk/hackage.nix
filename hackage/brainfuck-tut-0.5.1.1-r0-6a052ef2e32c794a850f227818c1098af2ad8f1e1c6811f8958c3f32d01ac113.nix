{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "brainfuck-tut"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cpp.cabrera@gmail.com";
      author = "Alejandro Cabrera";
      homepage = "";
      url = "";
      synopsis = "A simple BF interpreter.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "bfh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."brainfuck-tut" or ((hsPkgs.pkgs-errors).buildDepError "brainfuck-tut"))
            ];
          buildable = true;
          };
        };
      };
    }