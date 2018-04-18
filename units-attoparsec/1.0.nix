{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "units-attoparsec";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "João Cristóvão <jmacristovao@gmail.com>";
        author = "João Cristóvão <jmacristovao@gmail.com>";
        homepage = "https://github.com/jcristovao/units-attoparsec";
        url = "";
        synopsis = "Attoparsec parsers for the units package";
        description = "This package provides parsers for the units defined in the\n@units-defs@ package, used with @units@.\nUser contributions to this package are strongly encouraged. Please\nsubmit pull requests!";
        buildType = "Simple";
      };
      components = {
        units-attoparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.units
            hsPkgs.units-defs
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.template-haskell
          ];
        };
      };
    }