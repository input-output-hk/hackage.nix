{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "toml-parser";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "2017 Eric Mertens";
        maintainer = "emertens@gmail.com";
        author = "Eric Mertens";
        homepage = "https://github.com/glguy/toml-parser";
        url = "";
        synopsis = "Parser for the TOML configuration language";
        description = "Parser for the TOML configuration language. TOML is specified\nby <https://github.com/toml-lang/toml>. This language is\ndesigned to be easy to understand and unambiguous.\n\nThis implementation uses Alex and Happy to generate an\nefficient lexer and parser. It aims to have minimal library\ndependencies.";
        buildType = "Simple";
      };
      components = {
        toml-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.text
            hsPkgs.time
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
      };
    }