{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "selfrestart";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Niklas Hambüchen <mail@nh2.me>";
        author = "Niklas Hambüchen <mail@nh2.me>";
        homepage = "https://github.com/nh2/selfrestart";
        url = "";
        synopsis = "Restarts the current executable (on binary change)";
        description = "Allows restarting the currently running executable.\n\nCan restart the running program binary using @exec()@,\neither manually or when the binary changes.\n\nAlso works with runhaskell/runghc.";
        buildType = "Simple";
      };
      components = {
        selfrestart = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.executable-path
            hsPkgs.unix
          ];
        };
      };
    }