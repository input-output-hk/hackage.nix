{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "dynamic-plot";
          version = "0.3.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) sagemuej \$ smail.uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "https://github.com/leftaroundabout/dynamic-plot";
        url = "";
        synopsis = "Interactive diagram windows";
        description = "Haskell excels at handling data like continuous functions\nin a nice way, i.e. without discretising anything to finite arrays as\nis typically done in languages like Matlab. Instead, you can simply pass\naround functions or infinite data structures (or /very/ high-resolution data\nthat would be infeasible to handle in a strict language).\n\nHowever when you want to /view/ the data, it will eventually need to be exported out of Haskell\nin some finite form. The purpose of this library is to delay this discretisation\nas long as possible: it implements an interactive plotting window that accepts continuous/recursive\ndata and only &#x201c;flattens&#x201d; it according to the specific view configuration.\nYou can then zoom in to a shown diagram and it will automatically calculate\nthe features more detailedly, or zoom out and discover previosly unexpected\nfeatures. You don't need to worry about specifying the range and/or resolution beforehand:\nthe program will try to find a suitable default view based on /all/ data your displaying,\nand you can always still zoom, resize or move later.\n\n<http://projects.haskell.org/diagrams> are used as the &#x201c;pre-rendered&#x201d; type. This\nmakes the output usable in a very wide range of applications, though at the moment only the GTK\nwindow view is implemented.";
        buildType = "Simple";
      };
      components = {
        dynamic-plot = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.vector-space
            hsPkgs.MemoTrie
            hsPkgs.vector
            hsPkgs.tagged
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.data-default
            hsPkgs.random
            hsPkgs.random-fu
            hsPkgs.time
            hsPkgs.deepseq
            hsPkgs.process
            hsPkgs.constrained-categories
            hsPkgs.free-vector-spaces
            hsPkgs.linearmap-category
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-cairo
            hsPkgs.diagrams-gtk
            hsPkgs.gtk
            hsPkgs.glib
            hsPkgs.colour
            hsPkgs.manifolds
            hsPkgs.manifold-random
            hsPkgs.colour-space
            hsPkgs.JuicyPixels
            hsPkgs.lens
          ];
        };
      };
    }