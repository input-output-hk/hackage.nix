{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "shake-language-c";
          version = "0.5.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (c) 2012-2014 Samplecount S.L.";
        maintainer = "stefan@samplecount.com";
        author = "";
        homepage = "https://github.com/samplecount/shake-language-c";
        url = "";
        synopsis = "Utilities for cross-compiling with Shake";
        description = "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @C@, @C++@ and @ObjC@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.";
        buildType = "Simple";
      };
      components = {
        shake-language-c = {
          depends  = [
            hsPkgs.base
            hsPkgs.fclabels
            hsPkgs.process
            hsPkgs.shake
            hsPkgs.split
            hsPkgs.unordered-containers
          ];
        };
      };
    }