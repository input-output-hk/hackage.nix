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
      specVersion = "1.10.0";
      identifier = { name = "data-dword"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2011, 2012 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-dword";
      url = "";
      synopsis = "Stick two binary words together to get a bigger one";
      description = "This package provides Template Haskell utilities for declaring fixed-length\nbinary word data types. Signed and unsigned 96, 128, 160, 192, 224, and\n256-bit types are predefined.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
            ];
          buildable = true;
          };
        };
      };
    }