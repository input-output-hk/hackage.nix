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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "dataenc"; version = "0.13.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Magnus Therning, 2007-2009";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "http://www.haskell.org/haskellwiki/Library/Data_encoding";
      url = "";
      synopsis = "Data encoding library";
      description = "Data encoding library currently providing Base16, Base32,\nBase32Hex, Base64, Base64Url, Base85, Python string escaping,\nQuoted-Printable, URL encoding, uuencode, xxencode, and yEncoding.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "tests" = {
          depends = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if flags.buildtests then true else false;
        };
      };
    };
  }