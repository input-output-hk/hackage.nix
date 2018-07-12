{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "web-plugins";
          version = "0.2.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "https://github.com/clckwrks/web-plugins";
        url = "";
        synopsis = "dynamic plugin system for web applications";
        description = "This provides a simple framework for defining plugins for a web application.\nIt is designed with the requirement that plugins can be loaded into a running\nweb application with out having to know about the plugin in advance.";
        buildType = "Simple";
      };
      components = {
        "web-plugins" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.containers
          ];
        };
      };
    }