{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "https-everywhere-rules-raw";
          version = "4.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "vi@zalora.com";
        author = "vi";
        homepage = "https://github.com/fmap/https-everywhere-rules-raw";
        url = "";
        synopsis = "Low-level (i.e. XML) access to HTTPS Everywhere rulesets.";
        description = "";
        buildType = "Simple";
      };
      components = {
        https-everywhere-rules-raw = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.functor-infix
          ];
        };
      };
    }