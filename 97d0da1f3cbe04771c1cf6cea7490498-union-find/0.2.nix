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
        name = "union-find";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Thomas Schilling <nominolo@googlemail.com>";
      homepage = "http://github.com/nominolo/union-find";
      url = "";
      synopsis = "Efficient union and equivalence testing of sets.";
      description = "The Union\\/Find algorithm implements these operations in\n(effectively) constant-time:\n\n1. Check whether two elements are in the same equivalence class.\n\n2. Create a union of two equivalence classes.\n\n3. Look up the descriptor of the equivalence class.";
      buildType = "Simple";
    };
    components = {
      "union-find" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
    };
  }