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
      specVersion = "1.10";
      identifier = {
        name = "th-reify-many";
        version = "0.1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Michael Sloan";
      homepage = "http://github.com/mgsloan/th-reify-many";
      url = "";
      synopsis = "Recurseively reify template haskell datatype info";
      description = "@th-reify-many@ provides functions for recursively reifying top\nlevel declarations.  The main intended use case is for enumerating\nthe names of datatypes reachable from an initial datatype, and\npassing these names to some function which generates instances.";
      buildType = "Simple";
    };
    components = {
      "th-reify-many" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.template-haskell)
          (hsPkgs.th-expand-syns)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.th-reify-many)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }