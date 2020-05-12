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
      identifier = { name = "phasechange"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Gábor Lehel";
      maintainer = "Gábor Lehel <illissius@gmail.com>";
      author = "Gábor Lehel";
      homepage = "http://github.com/glehel/phasechange";
      url = "";
      synopsis = "Freezing, thawing, and copy elision";
      description = "This library provides a class for types which present the same underlying data in both an immutable (frozen) as well as a mutable (thawed) form,\nand various functions to manipulate them. Some of the functions allow for copy elision.\n\nInstances are provided for the array types from the @primitive@, @array@, and @vector@ packages, but this is mainly for completeness: there is\nnothing these instances do which @vector@ doesn't already do better. The main purpose, rather, is to assist new types, for instance types whose implementation relies on destructive-update foreign imports, and cases when writing a full stream fusion framework isn't practical.\n\nThere are three modules:\n\n[Data.PhaseChange] This module exports the class without its methods, together with functions which guarantee referential transparency\n(provided that instances are well-behaved). This is the module you should normally import to work with PhaseChangeable data.\n\n[Data.PhaseChange.Unsafe] This module exports functions which can break referential transparency if they are used improperly. Be careful.\n\n[Data.PhaseChange.Impl] This module exports the class along with its methods. Import it if you want to define a new instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."monad-st" or (errorHandler.buildDepError "monad-st"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }