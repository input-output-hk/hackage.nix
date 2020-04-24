{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heterocephalus"; version = "1.0.5.1"; };
      license = "MIT";
      copyright = "2016 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/heterocephalus#readme";
      url = "";
      synopsis = "A type-safe template engine for working with popular front end development tools";
      description = "Recent front end development tools and languages are growing fast and have\nquite a complicated ecosystem. Few front end developers want to be forced\nuse Shakespeare templates. Instead, they would rather use @node@-friendly\nengines such that @pug@, @slim@, and @haml@. However, in using these\ntemplate engines, we lose the compile-time variable interpolation and type\nchecking from Shakespeare.\n\nHeterocephalus is intended for use with another feature rich template\nengine and provides a way to interpolate server side variables into a\nprecompiled template file with @forall@, @if@, and @case@ statements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "heterocephalus-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."heterocephalus" or ((hsPkgs.pkgs-errors).buildDepError "heterocephalus"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."heterocephalus" or ((hsPkgs.pkgs-errors).buildDepError "heterocephalus"))
            ];
          buildable = true;
          };
        };
      };
    }