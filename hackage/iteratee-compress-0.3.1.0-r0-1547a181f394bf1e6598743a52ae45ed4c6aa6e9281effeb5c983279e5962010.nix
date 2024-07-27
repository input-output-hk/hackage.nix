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
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "iteratee-compress"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 (c) Maciej Piechotka";
      maintainer = "uzytkownik2@gmail.com";
      author = "Maciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "An enumerators for compressing and decompressing streams";
      description = "An enumerators for compressing and decompressing streams";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = [
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."bz2" or (errorHandler.sysDepError "bz2"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }