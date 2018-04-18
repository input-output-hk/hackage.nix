{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HSHHelpers";
          version = "0.16";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2008 Thomas Hartman";
        maintainer = "Thomas Hartman <thomashartman1 at gmail>";
        author = "Thomas Hartman";
        homepage = "";
        url = "";
        synopsis = "Convenience functions that use HSH, instances for HSH.";
        description = "Functions I found I was using repeatedly when doing shell programming with HSH.\nRather than duplicate code, released on hackage.";
        buildType = "Simple";
      };
      components = {
        HSHHelpers = {
          depends  = [
            hsPkgs.base
            hsPkgs.HSH
            hsPkgs.unix
            hsPkgs.HStringTemplateHelpers
            hsPkgs.MissingH
            hsPkgs.regex-pcre
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.DebugTraceHelpers
          ];
        };
      };
    }