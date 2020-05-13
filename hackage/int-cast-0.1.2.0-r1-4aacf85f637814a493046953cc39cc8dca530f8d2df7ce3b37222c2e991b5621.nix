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
      identifier = { name = "int-cast"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/int-cast";
      url = "";
      synopsis = "Checked conversions between integral types";
      description = "Provides statically or dynamically checked conversions between integral types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
        buildable = true;
        };
      tests = {
        "int-cast-test" = {
          depends = [
            (hsPkgs."int-cast" or (errorHandler.buildDepError "int-cast"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
          buildable = true;
          };
        };
      };
    }