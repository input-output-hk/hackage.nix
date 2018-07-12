{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "curry-base";
          version = "0.2.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Holger Siegel";
        author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel";
        homepage = "http://curry-language.org";
        url = "";
        synopsis = "Functions for manipulating Curry programs";
        description = "This package serves as a foundation for Curry compilers. it defines the intermediate\nformats FlatCurry and ExtendedFlat. Additionally, it provides functionality\nfor the smooth integration of compiler frontends and backends.";
        buildType = "Simple";
      };
      components = {
        "curry-base" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.pretty
          ];
        };
      };
    }