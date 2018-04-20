{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stylized";
          version = "0.1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "luca.pwns@gmail.com";
        author = "Luca Molari";
        homepage = "http://patch-tag.com/r/lucid/Stylized";
        url = "";
        synopsis = "Ways to output stylized text on ANSI consoles.";
        description = "Various ways to output stylized text on ANSI consoles.\nUses some of the MaxBolingbroke's System.Console.ANSI\nfunctionalities.";
        buildType = "Simple";
      };
      components = {
        stylized = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
          ];
        };
      };
    }