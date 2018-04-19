{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hcom";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Niklas Larsson <niklas@mm.st>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Haskell COM support library";
        description = "Supporting for writing COM\\/Automation clients in Haskell, and for\npackaging up your Haskell code behind a COM-callable veneer.\n\nThis is an updated version of the original `com` library that works\nwith newer GHCs.";
        buildType = "Simple";
      };
      components = {
        hcom = {
          depends  = optionals system.isWindows [
            hsPkgs.old-time
            hsPkgs.base
          ];
          libs = optionals system.isWindows [
            pkgs.kernel32
            pkgs.user32
            pkgs.ole32
            pkgs.oleaut32
            pkgs.advapi32
          ];
        };
      };
    }