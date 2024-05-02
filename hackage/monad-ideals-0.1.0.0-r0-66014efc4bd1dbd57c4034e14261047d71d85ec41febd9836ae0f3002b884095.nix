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
      specVersion = "3.0";
      identifier = { name = "monad-ideals"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008 Edward A. Kmett, \nCopyright (C) 2004--2008 Dave Menendez, \nCopyright (C) 2007 Iavor Diatchki,\nCopyright (C) 2024 Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "https://github.com/viercc/monad-ideals";
      url = "";
      synopsis = "Ideal Monads and coproduct of them";
      description = "Type class to represent ideal monads in terms of the\n\"ideal part\" of ideal monads. See README for more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctor-classes-compat" or (errorHandler.buildDepError "bifunctor-classes-compat"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
        ];
        buildable = true;
      };
      tests = {
        "monad-ideals-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."monad-ideals" or (errorHandler.buildDepError "monad-ideals"))
          ];
          buildable = true;
        };
      };
    };
  }