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
      identifier = { name = "libexpect"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stroantree@gmail.com";
      author = "Stephen Roantree";
      homepage = "";
      url = "";
      synopsis = "Library for interacting with console applications via pseudoterminals.";
      description = "Bindings to libexpect.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        libs = [ (pkgs."expect" or (errorHandler.sysDepError "expect")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }