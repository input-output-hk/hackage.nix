{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pager";
          version = "0.1.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (c) 2015, Peter Harpending.";
        maintainer = "peter@harpending.org";
        author = "Peter Harpending";
        homepage = "https://github.com/pharpend/pager";
        url = "";
        synopsis = "Open up a pager, like 'less' or 'more'";
        description = "This opens up the user's \$PAGER. On Linux, this is usually called @less@. On\nthe various BSDs, this is usually @more@.";
        buildType = "Simple";
      };
      components = {
        pager = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.unix
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          hs-pager-test-pager = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit-extra
              hsPkgs.pager
            ];
          };
        };
      };
    }