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
      identifier = { name = "hsseccomp"; version = "0.2.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "tehunger@gmail.com";
      author = "Tom Hunger, Cornelius Diekmann";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to libseccomp";
      description = "Bindings to libseccomp. See \"System.Linux.Seccomp\" for docs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."seccomp" or (errorHandler.sysDepError "seccomp")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "seccomp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."hsseccomp" or (errorHandler.buildDepError "hsseccomp"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }