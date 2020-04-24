{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "caledon"; version = "2.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Matthew Mirman <mmirman@andrew.cmu.edu>";
      author = "Matthew Mirman";
      homepage = "https://github.com/mmirman/caledon";
      url = "";
      synopsis = "a logic programming language based on the calculus of constructions";
      description = "a dependently typed, polymorphic, higher order logic programming language based on the calculus of constructions designed for easier metaprogramming capabilities.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "caledon" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }