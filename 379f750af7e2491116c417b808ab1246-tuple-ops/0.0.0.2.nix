{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "tuple-ops";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jiasen Wu <jiasenwu@hotmail.com>";
        author = "Jiasen Wu";
        homepage = "https://github.com/pierric/tuple-ops";
        url = "";
        synopsis = "various operations on n-ary tuples via GHC.Generics";
        description = "Some operations on n-ary tuples, including 'uncons', 'cons', etc. This package distinguish itself from other packages\non tuple mainly on the the implementation under the cover. It converts Generic datatype into the its representation\nform, and carries out the operations on there.  The other point is that this package tends to treat non-tuples directly as\n1-ary, without need of 'OneTuple' or similar intermediate wrapper.";
        buildType = "Simple";
      };
      components = {
        tuple-ops = {
          depends  = [
            hsPkgs.base
            hsPkgs.type-combinators
          ];
        };
      };
    }