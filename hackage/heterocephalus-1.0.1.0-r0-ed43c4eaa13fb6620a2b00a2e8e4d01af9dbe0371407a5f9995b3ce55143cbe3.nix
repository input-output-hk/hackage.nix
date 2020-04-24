{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heterocephalus"; version = "1.0.1.0"; };
      license = "MIT";
      copyright = "2016 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/heterocephalus#readme";
      url = "";
      synopsis = "A type safe template engine for collaborating with front end development tools";
      description = "Recent front end developing tools are growing fast and have created the complicated ecosystem, and few front end developer want to use Shakespeare template instead of commonly used @node@ friendly engines such that @pug@, @slim@, @haml@, though Shakespeare template has great feature of compile time variable interpolation and type checking.\n\nFrom this observation, Heterocephalus is developed for using with another feature rich template engine and only provides the way to interpolate server side variables into the precompiled template file with @forall@ and @if@ statement.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
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