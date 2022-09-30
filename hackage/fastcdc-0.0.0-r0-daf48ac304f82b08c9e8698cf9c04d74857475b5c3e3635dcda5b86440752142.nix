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
      identifier = { name = "fastcdc"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Gregor Kleen";
      maintainer = "aethoago@141.li";
      author = "Gregor Kleen";
      homepage = "https://github.com/gkleen/fastcdc#readme";
      url = "";
      synopsis = "An implementation of FastCDC, a content-defined chunking algorithm based on the Gear hash rolling hash algorithm";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."gearhash" or (errorHandler.buildDepError "gearhash"))
          ];
        buildable = true;
        };
      exes = {
        "fastcdc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."fastcdc" or (errorHandler.buildDepError "fastcdc"))
            (hsPkgs."gearhash" or (errorHandler.buildDepError "gearhash"))
            ];
          buildable = true;
          };
        };
      };
    }