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
      identifier = { name = "FirstPrelude"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dom.orchard@gmail.com";
      author = "dorchard";
      homepage = "https://github.com/dorchard/FirstPrelude";
      url = "";
      synopsis = "A version of Prelude suitable for teaching.";
      description = "The design goals are to simplify considerably the Prelude library so that basic functional programming can be taught without having to explain type classes.  I have observed in several years of teaching Haskell that many beginner mistakes which in a language like ML would result in a clear error message instead result in an error message about a lack of type class instances. This is unfortunate as type classes cannot easily be taught immediately and so beginners are left without as much support until they learn more topics. FirstPrelude is designed to simplify away as much of this as possible by using very few type classes and making a few other simplifying choices. The goal is then for students to switch to regular Prelude later in the course. A synposis of the changes can be found on the project homepage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }