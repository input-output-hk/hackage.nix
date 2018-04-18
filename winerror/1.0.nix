{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "winerror";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2008 Felix Martini";
        maintainer = "fmartini@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Error handling for foreign calls to the Windows API.";
        description = "A small library useful for error handling when making\nforeign calls to the Windows API. Error codes set by\nWindows are converted to Haskell exceptions and can be\nthrown and caught with the usual exception handling\nfunctions in Control.Exception.";
        buildType = "Simple";
      };
      components = {
        winerror = {
          depends  = pkgs.lib.optional system.isWindows hsPkgs.base;
        };
      };
    }