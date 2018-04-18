{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "join";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "martin.sulzmann@gmail.com";
        author = "Martin Sulzmann";
        homepage = "http://sulzmann.blogspot.com/2008/12/parallel-join-patterns-with-guards-and.html";
        url = "";
        synopsis = "Parallel Join Patterns with Guards and Propagation";
        description = "Parallel Join Patterns with Guards and Propagation";
        buildType = "Simple";
      };
      components = {
        join = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.stm
            hsPkgs.multisetrewrite
          ];
        };
      };
    }