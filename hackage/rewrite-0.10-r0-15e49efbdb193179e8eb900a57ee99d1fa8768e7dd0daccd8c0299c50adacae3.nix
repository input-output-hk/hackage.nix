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
      specVersion = "1.8";
      identifier = { name = "rewrite"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "2013 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/rewrite";
      url = "";
      synopsis = "open file and rewrite it with new contents";
      description = "In the Unix shell there is no easy way to use a filter program\nto change the contents of a file in-place. For example, if you\nwant to sort a file in place, this will not work:\n\nsort \\< myfile \\> myfile\n\nAll that will get you is an empty myfile. This package\ngives you the rewrite program, so this will work:\n\nrewrite myfile sort";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rewrite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }