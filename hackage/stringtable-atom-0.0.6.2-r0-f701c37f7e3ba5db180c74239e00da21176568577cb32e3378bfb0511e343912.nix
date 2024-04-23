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
    flags = { sybinbase = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stringtable-atom"; version = "0.0.6.2"; };
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
        depends = if flags.sybinbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
      };
    };
  }