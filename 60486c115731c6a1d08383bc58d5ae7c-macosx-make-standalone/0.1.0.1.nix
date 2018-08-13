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
        name = "macosx-make-standalone";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Utrecht University";
      maintainer = "atze@uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/atzedijkstra/macosx-make-standalone";
      url = "";
      synopsis = "Make a macosx app standalone deployable";
      description = "Make a macosx app standalone by bundling all non-standard dylibs into it.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "macosx-make-standalone" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-template)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.deepseq)
            (hsPkgs.graph-visit)
          ];
        };
      };
    };
  }