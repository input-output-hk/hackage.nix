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
      identifier = { name = "wide-word-instances"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 by Ximin Luo";
      maintainer = "infinity0@pwned.gg";
      author = "Ximin Luo";
      homepage = "https://github.com/infinity0/wide-word-instances";
      url = "";
      synopsis = "Instances for wide-word";
      description = "This package provides extra instances for @wide-word@, that are currently\nunsuitable for either @wide-word@ itself or the typeclass's own package,\nbecause it would introduce too many dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
        ];
        buildable = true;
      };
    };
  }