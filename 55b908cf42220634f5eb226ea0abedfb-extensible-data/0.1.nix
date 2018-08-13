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
      specVersion = "1.2";
      identifier = {
        name = "extensible-data";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Sums/products/lists/trees which can be extended in other modules";
      description = "Extensible lists: Add to a list at compile-time in many modules, which\ndo not necessarily know each other, and then collect it into a single\nlist in a module depending on all of them (possibly indirectly).\n\nExtensible products: It is a record in which new fields can be added\nanywhere including in different modules; dependent defaults are\nsupported, so it is still possible to make a value of such a type.\n\nExtensible sums: Type with choices; new choices can be added anywhere\nincluding in other modules (which do not need to know each other). The\noperations on them are also freely extensible in the similar way.\n\nExtensible trees: You can make a tree out of types, and have a value at\neach node. New nodes can be added anywhere if you have access to the\nnode which will become the new node's parent.";
      buildType = "Simple";
    };
    components = {
      "extensible-data" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-lens)
          (hsPkgs.hashable)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }