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
      identifier = { name = "nitro"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edahlgren@bu.mp";
      author = "Erin Dahlgren";
      homepage = "<https://github.com/bumptech/nitro-haskell>";
      url = "";
      synopsis = "Haskell bindings for Nitro";
      description = "Nitro is a secure message-passing network applications library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."nitro" or (errorHandler.sysDepError "nitro"))
          (pkgs."nitronacl" or (errorHandler.sysDepError "nitronacl"))
          (pkgs."ev" or (errorHandler.sysDepError "ev"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          ];
        buildable = true;
        };
      };
    }