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
      identifier = { name = "indexed-free"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/indexed-free";
      url = "";
      synopsis = "indexed monads for free";
      description = "A free indexed monad";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
          ];
        buildable = true;
        };
      };
    }