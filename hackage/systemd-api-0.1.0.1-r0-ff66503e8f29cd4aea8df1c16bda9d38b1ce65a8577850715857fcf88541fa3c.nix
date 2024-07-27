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
      specVersion = "2.2";
      identifier = { name = "systemd-api"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/systemd-api";
      url = "";
      synopsis = "systemd bindings";
      description = "Bindings to various systemd functions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
        ];
        libs = [ (pkgs."systemd" or (errorHandler.sysDepError "systemd")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }