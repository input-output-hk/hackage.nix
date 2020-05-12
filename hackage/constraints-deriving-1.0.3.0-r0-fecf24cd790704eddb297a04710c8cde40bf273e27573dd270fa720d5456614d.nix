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
    flags = { constraints = false; debug = false; examples = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "constraints-deriving"; version = "1.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Artem Chirkin";
      maintainer = "achirkin@users.noreply.github.com";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/constraints-deriving#readme";
      url = "";
      synopsis = "Manipulating constraints and deriving class instances programmatically.";
      description = "The library provides a plugin to derive class instances programmatically. Please see the README on GitHub at <https://github.com/achirkin/constraints-deriving#readme>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ] ++ (pkgs.lib).optional (flags.constraints) (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"));
        buildable = true;
        };
      exes = {
        "deriving-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints-deriving" or (errorHandler.buildDepError "constraints-deriving"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "functional-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."constraints-deriving" or (errorHandler.buildDepError "constraints-deriving"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            ];
          buildable = true;
          };
        };
      };
    }