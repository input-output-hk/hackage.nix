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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "gearhash"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Gregor Kleen";
      maintainer = "aethoago@141.li";
      author = "Gregor Kleen";
      homepage = "https://github.com/gkleen/fastcdc#readme";
      url = "";
      synopsis = "An implementation of Gear hash, a fast rolling hash algorithm";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          ];
        buildable = true;
        };
      exes = {
        "count" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            ];
          buildable = true;
          };
        "gearhash" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."gearhash" or (errorHandler.buildDepError "gearhash"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            ];
          buildable = true;
          };
        "gearhash-conduit" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."gearhash" or (errorHandler.buildDepError "gearhash"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            ];
          buildable = true;
          };
        };
      };
    }