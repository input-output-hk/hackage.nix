{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "press";
          version = "0.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "bickfordb@gmail.com";
        author = "Brandon Bickford <bickfordb@gmail.com>";
        homepage = "http://github.com/bickfordb/text-press";
        url = "";
        synopsis = "Text template library targeted at the web / HTML generation";
        description = "Press is a general purpose text templating engine that is targeted at generating HTML / Web content.  It uses the same syntax Django/Jinja templates use.";
        buildType = "Simple";
      };
      components = {
        press = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.json
          ];
        };
      };
    }