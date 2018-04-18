{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "matchers";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2012 Omari Norman.";
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
            hsPkgs.explicit-exception
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.pcre-light
          ];
        };
      };
    }