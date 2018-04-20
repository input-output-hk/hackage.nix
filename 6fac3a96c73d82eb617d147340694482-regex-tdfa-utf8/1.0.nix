{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regex-tdfa-utf8";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@list.mightyreason.com";
        author = "Chris Kuklewicz";
        homepage = "";
        url = "";
        synopsis = "This combines regex-tdfa with utf8-string to allow searching over UTF8 encoded lazy bytestrings.";
        description = "This combines regex-tdfa with utf8-string to allow searching over UTF8 encoded lazy bytestrings.";
        buildType = "Simple";
      };
      components = {
        regex-tdfa-utf8 = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
          ];
        };
      };
    }