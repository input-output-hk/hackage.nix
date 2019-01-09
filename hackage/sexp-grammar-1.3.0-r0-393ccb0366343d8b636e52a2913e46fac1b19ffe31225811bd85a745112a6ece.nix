{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sexp-grammar"; version = "1.3.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.profunctors)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.text)
          ];
        build-tools = [
          ((hsPkgs.buildPackages).alex)
          ((hsPkgs.buildPackages).happy)
          ];
        };
      tests = {
        "sexp-grammar-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.sexp-grammar)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "sexp-grammar-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.sexp-grammar)
            (hsPkgs.text)
            ];
          };
        };
      };
    }