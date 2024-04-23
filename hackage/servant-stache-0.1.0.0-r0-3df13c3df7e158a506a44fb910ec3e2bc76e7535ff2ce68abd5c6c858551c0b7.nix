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
      identifier = { name = "servant-stache"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Tatsuya Hirose";
      maintainer = "tatsuya.hirose.0804@gmail.com";
      author = "Tatsuya Hirose";
      homepage = "https://github.com/lotz84/servant-stache#readme";
      url = "";
      synopsis = "Content-Types for rendering Mustache in servant";
      description = "Content-Types and template management for rendering Mustache templates in servant Web applications. This package is heavily inspired by <http://hackage.haskell.org/package/servant-ede servant-ede>. Documentation and examples available at \"Servant.Mustache\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."stache" or (errorHandler.buildDepError "stache"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xss-sanitize" or (errorHandler.buildDepError "xss-sanitize"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-stache" or (errorHandler.buildDepError "servant-stache"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
    };
  }