{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rawstring-qm";
          version = "0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tolysz@gmail.com";
        author = "Marcin Tolysz";
        homepage = "https://github.com/tolysz/rawstring-qm";
        url = "";
        synopsis = "Simple raw string quotation and dictionary interpolation";
        description = "Supply a couple of usefull QuasiQuotes so we can use functions to lookup values\nThis is an initial, and unstable package.";
        buildType = "Simple";
      };
      components = {
        rawstring-qm = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.haskell-src-meta
          ];
        };
      };
    }