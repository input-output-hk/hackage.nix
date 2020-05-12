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
      identifier = { name = "hs-gen-iface"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Utility to generate haskell-names interface files";
      description = "Compiler which generates module interfaces for haskell-names";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hs-gen-iface" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-names" or (errorHandler.buildDepError "haskell-names"))
            (hsPkgs."haskell-packages" or (errorHandler.buildDepError "haskell-packages"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."hse-cpp" or (errorHandler.buildDepError "hse-cpp"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }