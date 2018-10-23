{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "shared-fields";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fraser.m.murray@gmail.com";
      author = "Fraser Murray";
      homepage = "http://github.com/intolerable/shared-fields";
      url = "";
      synopsis = "a tiny library for using shared lens fields";
      description = "A simple single-module library for creating lens field typeclasses in a way that allows them to be shared between modules.\nBy default, lens' @makeFields@ creates a new class if it can't find a matching one in scope. This means that if you try to @makeFields@ records in different modules without importing one module into the other, you'll get conflicting class definitions rather than a single lens which functions with both records.";
      buildType = "Simple";
    };
    components = {
      "shared-fields" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.shared-fields)
            (hsPkgs.text)
          ];
        };
      };
    };
  }