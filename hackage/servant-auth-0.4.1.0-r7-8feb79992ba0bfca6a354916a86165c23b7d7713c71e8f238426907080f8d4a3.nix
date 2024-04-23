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
      identifier = { name = "servant-auth"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "https://github.com/haskell-servant/servant/tree/master/servant-auth#readme";
      url = "";
      synopsis = "Authentication combinators for servant";
      description = "This package provides an @Auth@ combinator for 'servant'. This combinator\nallows using different authentication schemes in a straightforward way,\nand possibly in conjunction with one another.\n\n'servant-auth' additionally provides concrete authentication schemes, such\nas Basic Access Authentication, JSON Web Tokens, and Cookies.\n\nFor more details on how to use this, see the <https://github.com/haskell-servant/servant/tree/master/servant-auth#readme README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."jose" or (errorHandler.buildDepError "jose"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }