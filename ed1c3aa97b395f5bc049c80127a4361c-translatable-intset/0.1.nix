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
        name = "translatable-intset";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) 2011 Jannis Harder";
      maintainer = "Jannis Harder <jannis@harderweb.de>";
      author = "Jannis Harder <jannis@harderweb.de>";
      homepage = "";
      url = "";
      synopsis = "Integer sets with a constant time translate operation.";
      description = "This package implements integer sets with a\nconstant time translate operation, defined as\n@translate x s = map (+x) s@. It is based on\nFinger-Trees storing differences of consecutive\nentries of the ordered sequence of set elements.";
      buildType = "Custom";
    };
    components = {
      "translatable-intset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fingertree)
        ];
      };
      exes = { "test" = {}; };
    };
  }