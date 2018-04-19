{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "print-debugger";
          version = "1.1.7";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "johnmichaelreedfas@gmail.com";
        author = "John-Michael Reed";
        homepage = "https://github.com/JohnReedLOL/HaskellPrintDebugger";
        url = "";
        synopsis = "Debug print formatting library.";
        description = "Print debugging with stack trace for Haskell (formatted for ease \t                   of use). See screenshot: http://i.imgur.com/KCXYHNk.png";
        buildType = "Simple";
      };
      components = {
        print-debugger = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
          ];
        };
      };
    }