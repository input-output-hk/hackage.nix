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
      identifier = { name = "pthread"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2017 EURL Tweag,\n© 2017 LeapYear Technologies.";
      maintainer = "facundo.dominguez@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/pthread";
      url = "";
      synopsis = "Bindings for the pthread library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          ];
        libs = [ (pkgs."pthread" or (errorHandler.sysDepError "pthread")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."pthread" or (errorHandler.buildDepError "pthread"))
            ];
          buildable = true;
          };
        };
      };
    }