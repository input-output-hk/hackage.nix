{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smallcheck-lens";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/smallcheck-lens";
        url = "";
        synopsis = "SmallCheck properties for lens";
        description = "@SmallCheck@ properties for @Lens@es, @Setter@s, @Traversal@s, @Iso@s and @Prism@s.";
        buildType = "Simple";
      };
      components = {
        smallcheck-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.lens
            hsPkgs.smallcheck
            hsPkgs.smallcheck-series
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
      };
    }