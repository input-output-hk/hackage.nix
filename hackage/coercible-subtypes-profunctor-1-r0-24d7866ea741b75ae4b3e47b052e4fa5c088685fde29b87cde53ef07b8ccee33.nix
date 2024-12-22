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
      specVersion = "2.2";
      identifier = { name = "coercible-subtypes-profunctor"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020-2021 Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "https://github.com/viercc/coercible-subtypes";
      url = "";
      synopsis = "Combine profunctors with coercible-subtypes";
      description = "Provides the means of mapping @Sub a b@ type over @Profunctor p@.\nThe former comes from \"coercible-subtypes\" package and the latter is from \"profunctors\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."coercible-subtypes" or (errorHandler.buildDepError "coercible-subtypes"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
    };
  }