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
      specVersion = "2.2";
      identifier = { name = "varargs"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2025 Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/varargs#readme";
      url = "";
      synopsis = "Utilities for working with variadic functions using type-level lists";
      description = "Utility library for working with variadic functions using type-level lists of argument types. This library provides utilities for sequencing monadic actions over variadic function arguments, mapping over results, and folding over arguments with constraints. The core idea is to represent variadic functions as type-level lists of argument types paired with a result type, enabling type-safe operations over functions with arbitrary numbers of arguments. Originally part of the temporal-sdk project at Mercury, but extracted as a standalone library for broader use. For more details, see https://www.iankduncan.com/articles/2023-08-30-functions-into-rpc-definitions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "varargs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."varargs" or (errorHandler.buildDepError "varargs"))
          ];
          buildable = true;
        };
      };
    };
  }