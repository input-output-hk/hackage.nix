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
      specVersion = "3.4";
      identifier = { name = "broadcast-chan-conduit"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2025 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Conduit-based parallel streaming code for broadcast-chan";
      description = "__WARNING: As of 0.3.0 this package is deprecated, use the sublibrary of\nbroadcast-chan directly!__";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."broadcast-chan".components.sublibs.conduit or (errorHandler.buildDepError "broadcast-chan:conduit"))
        ];
        buildable = true;
      };
    };
  }