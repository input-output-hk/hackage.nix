{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "eternal";
          version = "0.1.0";
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
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.regex-compat
            hsPkgs.process
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.http-conduit
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.base-unicode-symbols
          ];
        };
      };
    }