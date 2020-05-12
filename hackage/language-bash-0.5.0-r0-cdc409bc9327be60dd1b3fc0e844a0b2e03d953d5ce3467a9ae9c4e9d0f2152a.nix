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
      specVersion = "1.8";
      identifier = { name = "language-bash"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Kyle Raftogianis";
      maintainer = "Kyle Raftogianis <kylerafto@gmail.com>";
      author = "Kyle Raftogianis";
      homepage = "http://github.com/knrafto/language-bash/";
      url = "";
      synopsis = "Parsing and pretty-printing Bash shell scripts";
      description = "A library for parsing, pretty-printing, and manipulating\nBash shell scripts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }