{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rawstring-qm";
          version = "0.2.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c)2014-16 Marcin Tolysz";
        maintainer = "tolysz@gmail.com";
        author = "Marcin Tolysz";
        homepage = "https://github.com/tolysz/rawstring-qm";
        url = "";
        synopsis = "Simple raw string quotation and dictionary interpolation";
        description = "Supply a couple of usefull QuasiQuotes so we can use functions to lookup values\nIt has quasiquotes for Strings, Text and Builders";
        buildType = "Simple";
      };
      components = {
        rawstring-qm = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.bytestring
          ];
        };
      };
    }