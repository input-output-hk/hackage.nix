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
    flags = { bytestring = true; text = true; vector = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sext"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/sext#readme";
      url = "";
      synopsis = "Lists, Texts, ByteStrings and Vectors with type-encoded length";
      description = "Sext (/s/tatic t/ext/) provides type-level safety for basic operations on string-like types (finite lists of elements). Use it when you need static guarantee on lengths of strings produced in your code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.text) (hsPkgs."text" or (errorHandler.buildDepError "text"))) ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or (errorHandler.buildDepError "vector"));
        buildable = true;
        };
      tests = {
        "sext-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sext" or (errorHandler.buildDepError "sext"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }