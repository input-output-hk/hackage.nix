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
    flags = { devel = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "dotgen"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "A simple interface for building .dot graph files.";
      description = "This package provides a simple interface for building .dot graph files,\nfor input into the dot and graphviz tools.\nIt includes a monadic interface for building graphs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "dotgen-test" = { buildable = if flags.devel then true else false; };
      };
    };
  }