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
      identifier = { name = "cgi-utils"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "none";
      author = "Chris Done (chrisdone@gmail.com)";
      homepage = "http://github.com/chrisdone/haskell-cgi-utils";
      url = "";
      synopsis = "Simple modular utilities for CGI/FastCGI (sessions, etc.)";
      description = "Simple modular utilities for CGI/FastCGI that one tends to always need including sessions state.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }