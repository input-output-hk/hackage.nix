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
      identifier = { name = "crockford"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2026 Henry Bucklow";
      maintainer = "Henry Bucklow <henry@elsie.org.uk>";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "An implementation of Douglas Crockford's base32 encoding.";
      description = "An implementation of Douglas Crockford's base32 encoding, a textual 32-symbol notation for\nexpressing numbers in a form that can be conveniently and accurately transmitted between humans\nand computer systems. It uses a set of 32 symbols (0-9 and A-Z, excluding I, L, O, and U) to\nrepresent numbers in a compact and human-friendly way.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }