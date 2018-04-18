{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SDL";
          version = "0.5.10";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2009, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Binding to libSDL";
        description = "";
        buildType = "Custom";
      };
      components = {
        SDL = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.SDL ];
          frameworks = [ pkgs.AppKit ];
        };
      };
    }