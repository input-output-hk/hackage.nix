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
      specVersion = "1.6";
      identifier = { name = "CoreErlang"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2008, David Castro Pérez, Henrique Ferreiro García";
      maintainer = "Alex Kropivny <alex.kropivny@gmail.com>";
      author = "David Castro Pérez <dcastrop@udc.es>\nHenrique Ferreiro García <hferreiro@udc.es>";
      homepage = "http://github.com/amtal/CoreErlang";
      url = "";
      synopsis = "Manipulating Core Erlang source code";
      description = "Facilities for manipulating Core Erlang source code:\nan abstract syntax, parser and pretty-printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }