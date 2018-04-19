{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "com";
          version = "1.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Haskell COM support library";
        description = "Supporting for writing COM\\/Automation clients in Haskell, and for\npackaging up your Haskell code behind a COM-callable veneer.\n\nSome examples of how to use the package can be found at <http://haskell.forkio.com/com-examples>";
        buildType = "Simple";
      };
      components = {
        com = {
          depends  = optionals system.isWindows ([
            hsPkgs.old-time
          ] ++ [ hsPkgs.base ]);
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