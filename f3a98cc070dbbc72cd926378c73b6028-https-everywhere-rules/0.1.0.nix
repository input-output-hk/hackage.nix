{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "https-everywhere-rules";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "vi@zalora.com";
        author = "vi";
        homepage = "https://github.com/fmap/https-everywhere-rules";
        url = "";
        synopsis = "High-level access to HTTPS Everywhere rulesets.";
        description = "";
        buildType = "Simple";
      };
      components = {
        https-everywhere-rules = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.errors
            hsPkgs.functor-infix
            hsPkgs.http-client
            hsPkgs.lens
            hsPkgs.network
            hsPkgs.pipes
            hsPkgs.string-conversions
            hsPkgs.taggy-lens
            hsPkgs.text
            hsPkgs.text-icu
            hsPkgs.https-everywhere-rules-raw
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.errors
              hsPkgs.functor-infix
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.lens
              hsPkgs.network
              hsPkgs.pipes
              hsPkgs.string-conversions
              hsPkgs.taggy-lens
              hsPkgs.text
              hsPkgs.text-icu
              hsPkgs.https-everywhere-rules-raw
            ];
          };
        };
      };
    }