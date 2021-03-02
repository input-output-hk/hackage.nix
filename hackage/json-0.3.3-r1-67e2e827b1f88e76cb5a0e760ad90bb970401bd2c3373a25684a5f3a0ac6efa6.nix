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
    flags = { split-base = true; parsec = true; pretty = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "json"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Galois Inc.";
      maintainer = "dons@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Support for serialising Haskell to and from JSON";
      description = "JSON (JavaScript Object Notation) is a lightweight data-interchange\nformat. It is easy for humans to read and write. It is easy for\nmachines to parse and generate.  It is based on a subset of the\nJavaScript Programming Language, Standard ECMA-262 3rd Edition -\nDecember 1999.\n\nThis library provides a parser and pretty printer for converting\nbetween Haskell values and JSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ] ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))) ++ (pkgs.lib).optional (flags.pretty) (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }