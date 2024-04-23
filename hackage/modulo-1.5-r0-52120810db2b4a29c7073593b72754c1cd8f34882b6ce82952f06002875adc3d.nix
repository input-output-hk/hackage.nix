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
      identifier = { name = "modulo"; version = "1.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Modular C code generator";
      description = "Modulo is a tool that generates modular, standard C interfaces based on a high-level\ndescription language. The idea is to specify functionality in the module language\nand implement it in any language that supports C-style calling conventions.\nThis package include generators for C and Common Lisp (JavaScript and Haskell on the way).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."prettify" or (errorHandler.buildDepError "prettify"))
          (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."atto-lisp" or (errorHandler.buildDepError "atto-lisp"))
        ];
        buildable = true;
      };
      exes = { "modulo" = { buildable = true; }; };
    };
  }