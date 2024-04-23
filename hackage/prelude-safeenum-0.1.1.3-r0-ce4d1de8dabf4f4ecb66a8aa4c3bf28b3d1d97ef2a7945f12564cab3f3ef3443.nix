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
      identifier = { name = "prelude-safeenum"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012–2021 wren gayle romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "A redefinition of the Prelude's Enum class in order to render it safe.";
      description = "A redefinition of the Prelude's Enum class in order to render\nit safe. That is, the Haskell Language Report defines pred,\nsucc, fromEnum, and toEnum to be partial functions when the\ntype is Bounded, but this is unacceptable. We define a new\ntype-class hierarchy for enumeration which is safe and also\ngeneralizes to cover types which can only be enumerated in one\ndirection.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }