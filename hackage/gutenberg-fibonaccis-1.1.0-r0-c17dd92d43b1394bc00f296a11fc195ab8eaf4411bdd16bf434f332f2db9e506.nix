{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gutenberg-fibonaccis"; version = "1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2011-2012, Justin Hanekom <justin.hanekom@gmail.com>";
      maintainer = "justin.hanekom@gmail.com";
      author = "Justin Hanekom";
      homepage = "https://github.com/justinhanekom/gutenberg-fibonaccis";
      url = "";
      synopsis = "The first 1001 Fibonacci numbers, retrieved from the Gutenberg Project.";
      description = "Provides the first 1001 Fibonacci numbers, retrieved from the Gutenberg Project,\nalong with functions to retrieve and query these numbers.\n\nSee \"Algorithm.Gutenberg.Fibonaccis\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }