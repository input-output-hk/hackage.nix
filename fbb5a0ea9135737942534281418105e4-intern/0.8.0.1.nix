{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "intern";
          version = "0.8.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/intern/";
        url = "";
        synopsis = "Efficient hash-consing for arbitrary data types";
        description = "Changes from 0.7 to 0.8\n\n* Disabled cache removal as it was causing problems on large data sets. There is no good way to ensure that both references remain alive long enough to finish comparisons.\n* Switched to IORef from MVar\n\nChanges from 0.6 to 0.7\n\n* Fixed problem where comparisons could happen between data structures while one was still a thunk, leading to equal structures comparing as inequal in limited circumstances, by appropriately using strictness annotations.\n\nEfficient hash-consing for arbitrary data types\n\nChanges from 0.5.2 to 0.6\n\n* Widened the caches so they don't go through a single MVar per type. This has made a dramatic impact on performance. However, this broke the previous invariant that newer entries always had higher Ids than older entries.\n\nChanges from 0.5.1 to 0.5.2\n\n* Added Data.Interned.IntSet";
        buildType = "Simple";
      };
      components = {
        intern = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.array
          ];
        };
      };
    }