{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "matchers";
          version = "0.12.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2013 Omari Norman.";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/matchers";
        url = "";
        synopsis = "Text matchers";
        description = "Helpers for performing text matches.";
        buildType = "Simple";
      };
      components = {
        matchers = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.time
          ];
          libs = [ pkgs.pcre ];
        };
      };
    }