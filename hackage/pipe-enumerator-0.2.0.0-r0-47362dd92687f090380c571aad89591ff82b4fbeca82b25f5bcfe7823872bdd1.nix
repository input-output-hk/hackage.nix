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
      specVersion = "1.18";
      identifier = { name = "pipe-enumerator"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/pipe-enumerator";
      url = "";
      synopsis = "A bidirectional bridge between pipes and iteratees";
      description = "This library defines a set of functions that convert between\nthe \"Pipes\" and \"Data.Enumerator\" paradigms. The conversion\nis bidirectional: an appropriately-typed pipe can be converted\ninto an 'E.Iteratee' and back into a pipe. In addition, a pipe\ncan be fed into an iteratee (or, more specifically, 'E.Step'),\nresulting in an 'E.Enumerator'.\nThe library has been designed specifically for use with \"Snap\",\nbut I'm sure that many other interesting uses of it exist.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }