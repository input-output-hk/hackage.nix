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
      specVersion = "1.12";
      identifier = { name = "from"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2024-2025 XT";
      maintainer = "git@xtendo.org";
      author = "XT";
      homepage = "https://codeberg.org/xt/from";
      url = "";
      synopsis = "Typeclasses for type conversion mappings";
      description = "This package provides the typeclasses 'From' and 'TryFrom'.\n\nThe 'From.From' typeclass provides @'From.from' :: a -> b@. It is an\ninterface a pair of types that can be converted from one to another.\n\nThe 'From.TryFrom' typeclass provides @'From.tryFrom' :: a -> 'Prelude.Maybe'\nb@. It is an interface for a pair of types that can be converted from one to\nanother, safely handling the possibility of a failure.\n\nDefault 'From.From' instances are provided for some integral types in base,\nusing 'Prelude.fromIntegral'.\n\nThis is the core package. This package itself is not spectacularly useful.\nOne example of immediate usefulness would be the @from-string@ package.\n\nIf you are interested, you may want to check the project @README.md@ (not the\npackage @README.md@) as well.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "from-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."rawfilepath" or (errorHandler.buildDepError "rawfilepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }