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
      identifier = { name = "pgf2"; version = "1.3.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "kr.angelov@gmail.com";
      author = "Krasimir Angelov";
      homepage = "https://www.grammaticalframework.org";
      url = "";
      synopsis = "Bindings to the C version of the PGF runtime";
      description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications.\nGF grammars are compiled into Portable Grammar Format (PGF) which can be used with the PGF runtime, written in C.\nThis package provides Haskell bindings to that runtime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        libs = [
          (pkgs."pgf" or (errorHandler.sysDepError "pgf"))
          (pkgs."gu" or (errorHandler.sysDepError "gu"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }