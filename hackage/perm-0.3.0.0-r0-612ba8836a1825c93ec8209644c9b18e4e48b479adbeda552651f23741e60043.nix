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
      identifier = { name = "perm"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andy Sonnenburg <andy22286@gmail.com>";
      author = "Andy Sonnenburg";
      homepage = "https://github.com/sonyandy/perm";
      url = "";
      synopsis = "permutation Applicative and Monad with many mtl instances";
      description = "Based on \\\"Parsing Permutation Phrases\\\", by Arthur Baars, Andres Loeh and S.\nDoaitse Swierstra, /Haskell Workshop 2001/.  The implementation given here\ndoes not include explicit optional actions, and instead implements\n'Alternative' and 'MonadPlus'.  @m '<*>' ('lift' n '<|>' 'pure' a)@ should\nbe used where @'addOpt' m a n@ would be used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."catch-fd" or (errorHandler.buildDepError "catch-fd"))
        ];
        buildable = true;
      };
    };
  }