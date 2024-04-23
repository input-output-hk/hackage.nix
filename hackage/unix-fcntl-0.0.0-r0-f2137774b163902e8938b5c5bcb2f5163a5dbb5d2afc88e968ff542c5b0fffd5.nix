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
    flags = { examples = false; gnu = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unix-fcntl"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/unix-fcntl";
      url = "";
      synopsis = "Comprehensive bindings to fcntl(2)";
      description = "Comprehensive bindings to fcntl(2)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foreign-var" or (errorHandler.buildDepError "foreign-var"))
        ];
        buildable = true;
      };
      exes = {
        "record-lock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foreign-var" or (errorHandler.buildDepError "foreign-var"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unix-fcntl" or (errorHandler.buildDepError "unix-fcntl"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }