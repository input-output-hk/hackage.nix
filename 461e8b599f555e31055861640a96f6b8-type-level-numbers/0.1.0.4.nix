{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "type-level-numbers";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type level numbers implemented using type families.";
      description = "This is type level numbers implemented using type families. Natural\nnumbers use binary encoding. With default context stack numbers up\nto 2^18-1 coudl be represented. Signed integer numbers use balanced ternary\nencoding.\n\nPackage is structured as folows:\n\n* [@TypeLevel.Number.Classes@] contain generic type families such as Add\n\n* [@TypeLevel.Number.Nat@] natural numbers implemented using binary encoding\n\n* [@TypeLevel.Number.Int@] signed integers implemented using balanced\nternary encoding\n\n* [@TypeLevel.Boolean@] type level booleans\n\nSo far comparison of numbers, subtraction and multiplication of\nnumbers are supported.\n\nChanges in 0.1.0.3\n\n* Fix build for GHC 7.4\n\nChanges in 0.1.0.2:\n\n* Fix URL in cabal file\n\nChanges in 0.1.0.1:\n\n* Workaround for GHC bug #4364 (Build failure on GHC 7.0)";
      buildType = "Simple";
    };
    components = {
      "type-level-numbers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }