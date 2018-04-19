{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamboo-plugin-highlight";
          version = "2009.7.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/bamboo-plugin-highlight/";
        url = "";
        synopsis = "A highlight middleware";
        description = "It uses highlighting-kate to highlight any code inside pre / code with a class attribute hinting the language. It's a proper middleware that works on any html document.";
        buildType = "Simple";
      };
      components = {
        bamboo-plugin-highlight = {
          depends  = [
            hsPkgs.base
            hsPkgs.bamboo
            hsPkgs.hack
            hsPkgs.hack-contrib
            hsPkgs.bytestring
            hsPkgs.highlighting-kate
            hsPkgs.xhtml
            hsPkgs.hxt
            hsPkgs.mps
          ];
        };
      };
    }