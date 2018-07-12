{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "PSQueue";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Scott E. Dillard <sedillard@gmail.com>";
        author = "Ralf Hinze";
        homepage = "";
        url = "";
        synopsis = "Priority Search Queue";
        description = "A /priority search queue/ efficiently supports the\nopperations of both a search tree and a priority queue. A\n'Binding' is a product of a key and a priority.  Bindings\ncan be inserted, deleted, modified and queried in\nlogarithmic time, and the binding with the least priority\ncan be retrieved in constant time.  A queue can be built\nfrom a list of bindings, sorted by keys, in linear time.";
        buildType = "Simple";
      };
      components = {
        "PSQueue" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }