{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mbox";
          version = "0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gershomb@gmail.com";
        author = "Gershom Bazerman";
        homepage = "";
        url = "";
        synopsis = "Read and write standard mailbox files.";
        description = "Read and write standard mailbox (mboxrd) files.";
        buildType = "Simple";
      };
      components = {
        "mbox" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.safe
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.text
          ];
        };
      };
    }