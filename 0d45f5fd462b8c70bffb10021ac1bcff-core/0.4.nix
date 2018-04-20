{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "core";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lemmih@gmail.com";
        author = "David Himmelstrup";
        homepage = "";
        url = "";
        synopsis = "External core parser and pretty printer.";
        description = "External core parser and pretty printer.";
        buildType = "Simple";
      };
      components = {
        core = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.pretty
            hsPkgs.array
          ];
        };
      };
    }