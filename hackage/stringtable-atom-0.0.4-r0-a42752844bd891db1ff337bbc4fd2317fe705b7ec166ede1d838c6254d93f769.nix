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
      specVersion = "0";
      identifier = { name = "stringtable-atom"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "John Meacham 2008, Audrey Tang 2008";
      maintainer = "audreyt@audreyt.org";
      author = "John Meacham";
      homepage = "";
      url = "";
      synopsis = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
      description = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }