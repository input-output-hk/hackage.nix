{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "ClasshSS"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "galen.sprout@gmail.com";
      author = "Galen Sprout";
      homepage = "https://github.com/augyg/ClasshSS";
      url = "";
      synopsis = "Typified Tailwind for Rapid Development";
      description = "This package is a type-safe layer on top of Tailwind Classes\nto allow someone to treat the compiler like a lookup machine and ensure that no time will\nbe wasted trying to fix typos in tailwind strings\nOriginally this was meant to also provide a way to typify CSS but Tailwind provides such a nice\nabstraction on top of CSS and provides logical custom values that it made more sense to build\nentirely on top of Tailwind.\nIt is not meant to be an exact 1 to 1 translation of Tailwind but rather an interface that\naims to reduce the number of ways to do the same thing, in the effort to reduce spooky CSS behavior";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }