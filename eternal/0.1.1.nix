{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "eternal";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heather Cynede <Cynede@Gentoo.org>";
        author = "Heather Cynede";
        homepage = "";
        url = "";
        synopsis = "everything breaking the Fairbairn threshold";
        description = "Everything breaking the Fairbairn threshold\nbut in the same time usable in other projects";
        buildType = "Simple";
      };
      components = {
        eternal = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.base-unicode-symbols
          ];
        };
      };
    }