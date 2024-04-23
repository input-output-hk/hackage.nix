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
      specVersion = "1.0";
      identifier = { name = "OGL"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Neal Alexander <relapse.dev@gmx.com>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/OGL";
      url = "";
      synopsis = "A context aware binding for the OpenGL graphics system";
      description = "A fork of the hOpenGL 2.2.1.1 package.\nModifications to OpenGL IO using the -XGeneralizedNewtypeDeriving extension create context sensitive MonadIO aliases.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }