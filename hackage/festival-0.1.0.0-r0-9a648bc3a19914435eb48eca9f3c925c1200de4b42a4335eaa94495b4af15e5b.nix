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
      specVersion = "2.4";
      identifier = { name = "festival"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Guy Gastineau 2022";
      maintainer = "strings.stringsandstrings@gmail.com";
      author = "Guy Gastineau";
      homepage = "";
      url = "";
      synopsis = "C bindings plus conveniences for the festival tts system.";
      description = "Visit the README.md at https://github.com/guygastineau/festival-hs#README.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."Festival" or (errorHandler.sysDepError "Festival"))
          (pkgs."estbase" or (errorHandler.sysDepError "estbase"))
          (pkgs."estools" or (errorHandler.sysDepError "estools"))
          (pkgs."eststring" or (errorHandler.sysDepError "eststring"))
          (pkgs."asound" or (errorHandler.sysDepError "asound"))
          (pkgs."gomp" or (errorHandler.sysDepError "gomp"))
          (pkgs."ncursesw" or (errorHandler.sysDepError "ncursesw"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }