{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "file-collection";
          version = "0.1.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Joel Williamson";
        maintainer = "joel.s.williamson@gmail.com";
        author = "Joel Williamson";
        homepage = "https://github.com/joelwilliamson/file-collection";
        url = "";
        synopsis = "Provide a uniform interface over file archives and directories";
        description = "The interface is essentially the same as that provided by\n`directory`, except each function also take reference to the\narchive/root directory it is working under, and mutating\noperations return the structure wrapped in IO.";
        buildType = "Simple";
      };
      components = {
        file-collection = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.clock
            hsPkgs.zip-archive
          ];
        };
      };
    }