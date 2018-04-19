{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "http-link-header";
          version = "0.1.0";
        };
        license = "Apache-2.0";
        copyright = "2014 Greg V <greg@unrelenting.technology>";
        maintainer = "greg@unrelenting.technology";
        author = "Greg V";
        homepage = "https://github.com/myfreeweb/http-link-header";
        url = "";
        synopsis = "A parser and writer for the HTTP Link header as specified in RFC 5988 \"Web Linking\".";
        description = "https://github.com/myfreeweb/http-link-header";
        buildType = "Simple";
      };
      components = {
        http-link-header = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.errors
            hsPkgs.network-uri
            hsPkgs.attoparsec
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.http-link-header
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.hspec-attoparsec
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.http-link-header
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.criterion
            ];
          };
        };
      };
    }