{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "NXTDSL"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@agrafix.net>";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/legoDSL";
      url = "";
      synopsis = "Generate NXC Code from DSL";
      description = "Typesafe code generation for the LEGO-NXT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "ExampleRun" = { buildable = true; };
        "ExampleVM" = { buildable = true; };
        };
      };
    }