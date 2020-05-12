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
    flags = { new-typerep = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "concrete-typerep"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "reiner.pope@gmail.com";
      author = "Reiner Pope";
      homepage = "";
      url = "";
      synopsis = "Binary and Hashable instances for TypeRep";
      description = "Binary and Hashable instances for TypeRep";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ] ++ (if flags.new-typerep
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."concrete-typerep" or (errorHandler.buildDepError "concrete-typerep"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }