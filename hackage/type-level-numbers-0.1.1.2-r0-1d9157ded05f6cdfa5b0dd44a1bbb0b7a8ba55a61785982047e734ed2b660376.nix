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
      specVersion = "1.10";
      identifier = { name = "type-level-numbers"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type level numbers implemented using type families.";
      description = "This is type level numbers implemented using type families. Natural\nnumbers use binary encoding. With default context stack numbers up\nto 2^18-1 could be represented. Signed integer numbers use balanced ternary\nencoding.\n\nPackage is structured as folows:\n\n* [@TypeLevel.Number.Classes@] contain generic type families such as Add\n\n* [@TypeLevel.Number.Nat@] natural numbers implemented using binary encoding\n\n* [@TypeLevel.Number.Int@] signed integers implemented using balanced\nternary encoding\n\n* [@TypeLevel.Boolean@] type level booleans\n\nSo far comparison of numbers, subtraction and multiplication of\nnumbers are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test-nat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."type-level-numbers" or (errorHandler.buildDepError "type-level-numbers"))
            ];
          buildable = true;
          };
        "test-int" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."type-level-numbers" or (errorHandler.buildDepError "type-level-numbers"))
            ];
          buildable = true;
          };
        };
      };
    }