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
      identifier = { name = "mpg123-bindings"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Miroslav Puda";
      maintainer = "pakanek@gmail.com";
      author = "Miroslav Puda";
      homepage = "https://github.com/pakanek/mpg123-haskell-binding";
      url = "";
      synopsis = "Mpg132 bindings";
      description = "Raw bindings to libmpg123.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."mpg123" or (errorHandler.sysDepError "mpg123")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }