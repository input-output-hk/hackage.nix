{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sexp-grammar"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eugene Smolanka <esmolanka@gmail.com>, Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Eugene Smolanka, Sergey Vinokurov";
      homepage = "https://github.com/esmolanka/sexp-grammar";
      url = "";
      synopsis = "Invertible grammar combinators for S-expressions";
      description = "Serialisation to and deserialisation from S-expressions derived from\na single grammar definition.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.invertible-grammar)
          (hsPkgs.prettyprinter)
          (hsPkgs.recursion-schemes)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
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
            (hsPkgs.containers)
            (hsPkgs.invertible-grammar)
            (hsPkgs.prettyprinter)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.sexp-grammar)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            ];
          };
        };
      benchmarks = {
        "sexp-grammar-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.sexp-grammar)
            (hsPkgs.text)
            ];
          };
        };
      };
    }