{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "URLb";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oss@solidsnack.be";
        author = "Jason Dusek";
        homepage = "http://github.com/solidsnack/URLb";
        url = "";
        synopsis = "DEPRECATED A simple, liberal URL parser.";
        description = "DEPRECATED A simple, liberal URL parser.";
        buildType = "Simple";
      };
      components = {
        URLb = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.attoparsec
          ];
        };
      };
    }