{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HSHHelpers";
          version = "0.13";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2008 Thomas Hartman";
        maintainer = "Thomas Hartman <thomashartman1 at gmail>";
        author = "Thomas Hartman";
        homepage = "";
        url = "";
        synopsis = "Convenience functions and instances for HSH";
        description = "Convenience functions and instances for HSH. I will deprecate this package if its contents are integrated into HSH.";
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
          ];
        };
      };
    }