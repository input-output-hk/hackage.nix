{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      containers03 = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "list-tries";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+list-tries@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/list-tries/";
      url = "";
      synopsis = "Tries and Patricia tries: finite sets and maps for list keys";
      description = "This library provides implementations of finite sets and maps for list keys\nusing tries, both simple and of the Patricia kind. In most (or all? sorry,\nhaven't benchmarked yet) cases, the Patricia tries will have better\nperformance, so use them unless you have reasons not to.\n\nThe data types are parametrized over the map type they use internally to\nstore the child nodes: this allows extending them to support different kinds\nof key types or increasing efficiency. Child maps are required to be\ninstances of the Map class in Data.ListTrie.Base.Map. Some operations\nadditionally require an OrdMap instance.\n\nThe Eq, Ord, and Enum modules contain ready structures for key types which\nare instances of those classes, using lists of pairs, Data.Map, and\nData.IntMap respectively.";
      buildType = "Simple";
    };
    components = {
      "list-tries" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.binary)
        ];
      };
    };
  }