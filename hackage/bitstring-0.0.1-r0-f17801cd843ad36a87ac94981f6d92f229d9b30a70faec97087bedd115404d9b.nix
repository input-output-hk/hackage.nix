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
    flags = { base4 = true; withquickcheck = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "bitstring"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "https://github.com/bkomuves/bitstring";
      url = "";
      synopsis = "Lazy bit strings";
      description = "Lazy bit strings, built on the top of bytestrings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ]) ++ pkgs.lib.optional (flags.withquickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
      };
    };
  }