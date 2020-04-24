{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskeme"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felixspringer149@gmail.com";
      author = "Felix Springer";
      homepage = "https://github.com/jumper149/haskeme";
      url = "";
      synopsis = "Compiler from I- to S-Expressions for the Scheme Programming Language";
      description = "This compiler translates Scheme source code written with I-Expressions (indented expressions) into S-Expressions (symbolic expressions).";
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
        "haskeme" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskeme" or ((hsPkgs.pkgs-errors).buildDepError "haskeme"))
            ];
          buildable = true;
          };
        };
      };
    }