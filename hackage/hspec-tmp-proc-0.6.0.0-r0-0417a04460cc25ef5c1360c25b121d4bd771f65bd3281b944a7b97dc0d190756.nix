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
      specVersion = "3.0";
      identifier = { name = "hspec-tmp-proc"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Tim Emiola";
      maintainer = "adetokunbo@users.noreply.github.com";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/tmp-proc/tree/master/tmp-proc#tmp-proc";
      url = "";
      synopsis = "Simplify use of tmp-proc from hspec tests";
      description = "Reduces boilerplate when using tmp-proc with hspec";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
          ];
        buildable = true;
        };
      };
    }