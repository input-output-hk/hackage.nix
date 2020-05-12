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
    flags = { usestm = true; base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "monad-loops"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "http://code.haskell.org/~mokus/monad-loops";
      url = "";
      synopsis = "Monadic loops";
      description = "Some useful control operators for looping";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (flags.usestm) (hsPkgs."stm" or (errorHandler.buildDepError "stm"));
        buildable = true;
        };
      };
    }