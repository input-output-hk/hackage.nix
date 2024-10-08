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
      identifier = { name = "pipes-courier"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Kyle Van Berendonck";
      maintainer = "kvanberendonck@gmail.com";
      author = "Kyle Van Berendonck";
      homepage = "http://github.com/kvanberendonck/pipes-courier";
      url = "";
      synopsis = "Pipes utilities for interfacing with the courier message-passing framework.";
      description = "Pipes utilities for interfacing with the @courier@ message-passing framework.\nThis package implements shortcut fusion for both pushing and pulling streams.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."courier" or (errorHandler.buildDepError "courier"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
        ];
        buildable = true;
      };
    };
  }