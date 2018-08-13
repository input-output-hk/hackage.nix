{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sexp-grammar";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eugene Smolanka <esmolanka@gmail.com>, Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Eugene Smolanka, Sergey Vinokurov";
      homepage = "https://github.com/esmolanka/sexp-grammar";
      url = "";
      synopsis = "Invertible parsers for S-expressions";
      description = "Invertible grammar combinators for serializing and deserializing from S-expessions";
      buildType = "Simple";
    };
    components = {
      "sexp-grammar" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.stack-prism)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.wl-pprint-text)
        ];
      };
      tests = {
        "sexp-grammar-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.sexp-grammar)
            (hsPkgs.stack-prism)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }