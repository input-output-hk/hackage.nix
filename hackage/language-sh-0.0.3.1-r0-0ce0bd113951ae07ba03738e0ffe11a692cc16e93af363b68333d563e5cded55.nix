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
      specVersion = "1.2";
      identifier = { name = "language-sh"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephen Hicks <sdh33@cornell.edu>";
      author = "Stephen Hicks";
      homepage = "http://code.haskell.org/shsh/";
      url = "";
      synopsis = "A package for parsing shell scripts";
      description = "Language.Sh is a collection of modules for parsing and\nmanipulating expressions in shell grammar.\nThis is part of a larger project, shsh.\nPlease note that the API is somewhat unstable until we\nreach version 1.0.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
        ];
        buildable = true;
      };
    };
  }