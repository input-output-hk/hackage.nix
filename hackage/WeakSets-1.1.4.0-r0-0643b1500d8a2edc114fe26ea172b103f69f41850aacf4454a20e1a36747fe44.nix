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
      identifier = { name = "WeakSets"; version = "1.1.4.0"; };
      license = "LGPL-3.0-or-later";
      copyright = "";
      maintainer = "guillaumesabbagh@protonmail.com";
      author = "Guillaume Sabbagh";
      homepage = "https://gitlab.utc.fr/gsabbagh/sets";
      url = "";
      synopsis = "Simple set types. Useful to create sets of arbitrary types and nested sets.";
      description = "This package answers two problems : how to make sets and maps of types which do not implement the Ord typeclass and how to make arbitrarily nested sets as set theory allows. The first problem is resolved thanks to `WeakSet`s  and `WeakMap`s. The second problem is resolved thanks to `PureSet`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "WeakSets-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."WeakSets" or (errorHandler.buildDepError "WeakSets"))
          ];
          buildable = true;
        };
      };
    };
  }