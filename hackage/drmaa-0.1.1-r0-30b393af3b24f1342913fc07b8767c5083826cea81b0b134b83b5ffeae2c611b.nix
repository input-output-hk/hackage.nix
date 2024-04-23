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
      identifier = { name = "drmaa"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "A minimal Haskell bindings to DRMAA C library.";
      description = "A minimal Haskell bindings to DRMAA C library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
        ];
        libs = [ (pkgs."drmaa" or (errorHandler.sysDepError "drmaa")) ];
        buildable = true;
      };
    };
  }