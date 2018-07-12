{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "str";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ithinkican@gmail.com";
        author = "Allen Nelson";
        homepage = "http://www.github.com/thinkpad20/str";
        url = "";
        synopsis = "A type class to abstract between many different string types.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "str" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.MissingH
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.Crypto
            hsPkgs.base16-bytestring
            hsPkgs.utf8-string
          ];
        };
      };
    }