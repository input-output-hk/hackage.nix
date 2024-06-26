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
      identifier = { name = "tamper"; version = "0.4.2.3"; };
      license = "BSD-3-Clause";
      copyright = "2015 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/tamper/";
      url = "";
      synopsis = "Blaze-style HTML templates as a Monad Transformer.";
      description = "Tamper is a template library similar in approach to Blaze,\nbut implemented as a Monad Transformer, which allows the\nprogrammer to lift actions from the underlying monad into\ntemplates. This makes it possible to do things like\ntriggering database queries from within a template as\nneeded, accessing a cache, reading data from disk, etc.,\nall within the context of a template.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }