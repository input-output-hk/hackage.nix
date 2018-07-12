{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-static-routing";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gracjan@scrive.com";
        author = "Scrive";
        homepage = "https://github.com/scrive/happstack-static-routing";
        url = "";
        synopsis = "Support for static URL routing with overlap detection for Happstack.";
        description = "If you have a large routing table in Happstack and want\nto insert a new handler, you might run into overlap problems\n(ambiguity).  The new handler might not fire because it matches\nagainst a URL that is already handled earlier.  Or if you put your\nnew handler first, it might steal requests from existing handlers.\nThis Happstack support library allows you to detect overlap cases\nand build unambiguous routing tables where the order of the handlers\nis irrelevant.";
        buildType = "Simple";
      };
      components = {
        "happstack-static-routing" = {
          depends  = [
            hsPkgs.base
            hsPkgs.happstack-server
            hsPkgs.containers
            hsPkgs.list-tries
            hsPkgs.transformers
          ];
        };
      };
    }