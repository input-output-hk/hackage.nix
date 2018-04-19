{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Stream";
          version = "0.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wouter Swierstra <wss@cs.nott.ac.uk>";
        author = "Wouter Swierstra";
        homepage = "http://www.cs.nott.ac.uk/~wss/repos/Stream/dist/doc/html/";
        url = "";
        synopsis = "A library for manipulating infinite lists.";
        description = "This package implements functions, analogous\nto those from Data.List, to create and manipulate\ninfinite lists: @data Stream a = Cons a (Stream a)@.\nIt provides alternative definitions for those\nPrelude functions that make sense on such streams.\nNote that this package has (almost)\nnothing to do with the work on /Stream Fusion/ by\nDuncan Coutts, Roman Leshchinskiy, and Don Stewart.";
        buildType = "Simple";
      };
      components = {
        Stream = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }