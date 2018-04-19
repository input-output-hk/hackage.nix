{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "abstract-par";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Ryan Newton 2011-2012";
        maintainer = "Ryan Newton <rrnewton@gmail.com>";
        author = "Ryan Newton";
        homepage = "https://github.com/simonmar/monad-par";
        url = "";
        synopsis = "Type classes generalizing the functionality of the 'monad-par' library.";
        description = "The 'Par' monad offers a parallel programming API based on dataflow\nprogramming.  To use the `Par` monad, install the @monad-par@\npackage, which includes this package as a dependency.\n\nThis package is an abstract interface only. It provides a number of\ntype clasess, but not an implementation.  The type classes separate\ndifferent levels of @Par@ functionality.  See the\n\"Control.Monad.Par.Class\" module for more details.";
        buildType = "Simple";
      };
      components = {
        abstract-par = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }