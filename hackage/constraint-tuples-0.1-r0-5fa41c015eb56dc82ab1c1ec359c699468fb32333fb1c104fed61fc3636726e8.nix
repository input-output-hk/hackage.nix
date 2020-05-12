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
    flags = { generator-script = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "constraint-tuples"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2018-2019 Ryan Scott";
      maintainer = "ryan.gl.scott@gmail.com";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/constraint-tuples";
      url = "";
      synopsis = "Partially applicable constraint tuples";
      description = "This library provides classes that emulate the behavior of\nGHC's constraint tuple syntax. Unlike GHC's built-in\nconstraint tuples, the classes in this library can be\npartially applied.\n\nThis library exposes two different modules that are\nsemantically identical, but compile to slightly different\nCore:\n\n* \"Data.Tuple.Constraint\": A @CTupleN@ class compiles to\na dictionary data type with @N@ fields.\n\n* \"Data.Tuple.Constraint.ClassNewtype\": A @CTupleN@ class\ncompiles to a newtype around the corresponding built-in\nconstraint tuple type with @N@ arguments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "generator-script" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat-batteries" or (errorHandler.buildDepError "base-compat-batteries"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = if !flags.generator-script then false else true;
          };
        };
      };
    }