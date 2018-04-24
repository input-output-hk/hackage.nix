{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "disk-free-space";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        homepage = "https://github.com/redneb/disk-free-space";
        url = "";
        synopsis = "Retrieve information about disk space usage";
        description = "A cross-platform library for retrieving information about disk space usage.";
        buildType = "Simple";
      };
      components = {
        disk-free-space = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          build-tools = pkgs.lib.optional (!system.isWindows) hsPkgs.hsc2hs;
        };
      };
    }