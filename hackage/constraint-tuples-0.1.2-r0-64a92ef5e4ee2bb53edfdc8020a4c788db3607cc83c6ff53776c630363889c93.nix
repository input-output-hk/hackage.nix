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
      identifier = { name = "constraint-tuples"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2018-2019 Ryan Scott";
      maintainer = "ryan.gl.scott@gmail.com";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/constraint-tuples";
      url = "";
      synopsis = "Partially applicable constraint tuples";
      description = "This library provides classes and type aliases that\nemulate the behavior of GHC's constraint tuple syntax.\nUnlike GHC's built-in constraint tuples, the types in this\nlibrary can be partially applied.\n\nThis library exposes four different modules that provide\nessentially the same API with slight differences in their\nimplementation:\n\n* \"Data.Tuple.Constraint\": A @CTupleN@ class compiles to\na dictionary data type with @N@ fields.\n\n* \"Data.Tuple.Constraint.ClassNewtype\": A @CTupleN@ class\ncompiles to a newtype around the corresponding built-in\nconstraint tuple type with @N@ arguments.\n\n* @Data.Tuple.Constraint.TypeFamily@: A @CTupleN@ type\nalias is a constraint tuple type constructor with @N@\narguments obtained by way of a type family. This will\ncompile to a built-in constraint tuple, but casted with\na type family axiom.\n\n* @Data.Tuple.Constraint.TypeSynonym@: A @CTupleN@ type\nalias is a constraint tuple type constructor with @N@\narguments obtained by way of a type synonym. This will\ncompile directly to a built-in constraint tuple, but\nbecause this requires use of GHC features only present\non 8.0 or later, this module does not export anything on\nearlier versions of GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }