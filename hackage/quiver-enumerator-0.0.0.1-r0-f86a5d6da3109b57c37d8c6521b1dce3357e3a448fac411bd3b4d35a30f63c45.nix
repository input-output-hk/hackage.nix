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
      identifier = { name = "quiver-enumerator"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/quiver-enumerator";
      url = "";
      synopsis = "Bridge between Quiver and Iteratee paradigms";
      description = "This library defines a set of functions that convert between\nthe \"Quiver\" and \"Data.Enumerator\" paradigms. The conversion\nis bidirectional: an appropriately-typed stream processor\ncan be converted into an 'Data.Enumerator.Iteratee' and back\ninto a stream processor. In addition, a stream processor can\nbe fed into an iteratee (or 'Data.Enumerator.Step'),\nresulting in an 'Data.Enumerator.Enumerator'.\nThe library has been designed specifically for use with Snap,\nbut I'm sure that many other interesting uses of it exist.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
        ];
        buildable = true;
      };
    };
  }