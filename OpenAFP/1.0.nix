{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "OpenAFP";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "IBM AFP document format parser and generator";
        description = "IBM AFP document format parser and generator";
        buildType = "Custom";
      };
      components = {
        OpenAFP = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.regex-compat
          ];
        };
      };
    }