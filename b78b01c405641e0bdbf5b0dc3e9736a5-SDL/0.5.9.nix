{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SDL";
          version = "0.5.9";
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