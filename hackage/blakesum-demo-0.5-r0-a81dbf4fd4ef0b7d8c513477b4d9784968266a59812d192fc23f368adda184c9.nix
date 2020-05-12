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
      identifier = { name = "blakesum-demo"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Kevin Cantu";
      maintainer = "Kevin Cantu <me@kevincantu.org>";
      author = "Kevin Cantu <me@kevincantu.org>";
      homepage = "https://github.com/killerswan/Haskell-BLAKE";
      url = "";
      synopsis = "The BLAKE SHA-3 candidate hashes, in Haskell";
      description = "\nThis provides an executable which relies on the `blakesum` library, `Data.Digest.BLAKE`.\n\nUsage:\nblakesum [--algorithm=BITS] [--check] [--salt=SALT] FILE(S)\n\nContributions and optimizations are welcome!\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "blakesum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blakesum" or (errorHandler.buildDepError "blakesum"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }