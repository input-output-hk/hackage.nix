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
      specVersion = "1.10";
      identifier = { name = "data-default-instances-text"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/data-default-extra";
      url = "";
      synopsis = "Default instances for (lazy and strict) Text and Text Builder.";
      description = "Orphan instances for @Default@ type class, which is defined in package\n<https://hackage.haskell.org/package/data-default-class data-default-class>.\n\nFollowing @Default@ instances are provided:\n\n> -- Strict Text:\n> instance Default Text where\n>     def = empty\n>\n> -- Lazy Text:\n> instance Default Text where\n>     def = empty\n\nFollowing instances are provided only for\n<https://hackage.haskell.org/package/text text> >=0.8, since that it the\nversion that introduced @Builder@:\n\n> instance Default Builder where\n>     def = mempty";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
        buildable = true;
      };
    };
  }