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
      specVersion = "1.6";
      identifier = { name = "NXTDSL"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@agrafix.net>";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/legoDSL";
      url = "";
      synopsis = "Generate NXC Code from DSL";
      description = "Typesafe code generation for the LEGO-NXT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      exes = { "legoDSL" = { buildable = true; }; };
      };
    }