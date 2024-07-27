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
      identifier = { name = "FModExRaw"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dimitri.sabadie@gmail.com";
      author = "DimitriSabadie";
      homepage = "https://github.com/skypers/hsFModEx";
      url = "";
      synopsis = "The Haskell FModEx raw API.";
      description = "Haskell FModEx raw API. It’s a 1:1 Haskell binding over the famous C API.\nFor now, I use version 0.0.* for uncomplete API binding. The complete API will be released just in time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."fmodex" or (errorHandler.sysDepError "fmodex")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }