{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fclabels"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <sfvisser@cs.uu.nl>";
      author = "Sebastiaan Visser, Erik Hesselink";
      homepage = "";
      url = "";
      synopsis = "First class accessor labels.";
      description = "First class labels that act as bidirectional records fields.\nThe labels are fully composable and can be used to get, set\nand modify part of datatypes in a consistent way. The label\ndatatype, conveniently called `:->', is an instance of the\n`Category' type class, so is has a proper identity and\ncomposition. The library has support for automatically\nderiving labels from record selectors that start with an\nunderscore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.monads-fd)
          ];
        };
      };
    }