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
      identifier = { name = "bindings-monetdb-mapi"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muesli4@gmail.com";
      author = "Moritz Bruder";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings for the MonetDB API (mapi)";
      description = "This library only provides FFI bindings to the most basic functions. Feel free to create a pull request in case you need something.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        pkgconfig = [
          (pkgconfPkgs."monetdb-mapi" or (errorHandler.pkgConfDepError "monetdb-mapi"))
        ];
        buildable = true;
      };
    };
  }