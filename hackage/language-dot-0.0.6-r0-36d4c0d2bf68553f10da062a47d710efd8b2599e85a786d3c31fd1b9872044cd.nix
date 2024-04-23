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
    flags = { executable = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "language-dot"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Galois, Inc.";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "A library for the analysis and creation of Graphviz DOT files";
      description = "A library for the analysis and creation of Graphviz DOT files.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
      exes = {
        "ppdot" = { buildable = if flags.executable then true else false; };
      };
    };
  }