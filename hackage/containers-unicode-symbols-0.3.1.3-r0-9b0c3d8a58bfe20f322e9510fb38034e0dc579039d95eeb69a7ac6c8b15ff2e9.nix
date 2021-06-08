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
    flags = { containers-old = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "containers-unicode-symbols";
        version = "0.3.1.3";
        };
      license = "BSD-3-Clause";
      copyright = "2009—2021 Roel van Dijk <roel@lambdeacube.nl>";
      maintainer = "Roel van Dijk <roel@lambdeacube.nl>";
      author = "Roel van Dijk <roel@lambdeacube.nl>";
      homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
      url = "";
      synopsis = "Unicode alternatives for common functions and operators";
      description = "This package defines new symbols for a number of functions and\noperators in the containers package.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          ] ++ [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }