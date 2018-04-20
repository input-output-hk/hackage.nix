{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "latest-npm-version";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "phartig@rdrei.net";
        author = "Pascal Hartig";
        homepage = "https://github.com/passy/latest-npm-version";
        url = "";
        synopsis = "Find the latest version of a package on npm";
        description = "";
        buildType = "Simple";
      };
      components = {
        latest-npm-version = {
          depends  = [
            hsPkgs.base
            hsPkgs.pipes-http
            hsPkgs.pipes
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.network
            hsPkgs.pipes-bytestring
            hsPkgs.aeson
            hsPkgs.pipes-attoparsec
            hsPkgs.transformers
            hsPkgs.lens
          ];
        };
        exes = {
          latest-npm-version = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-http
              hsPkgs.pipes
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.network
              hsPkgs.pipes-bytestring
              hsPkgs.aeson
              hsPkgs.pipes-attoparsec
              hsPkgs.transformers
              hsPkgs.lens
              hsPkgs.cmdargs
            ];
          };
        };
        tests = {
          hspec-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.pipes-http
              hsPkgs.pipes
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.network
              hsPkgs.pipes-bytestring
              hsPkgs.aeson
              hsPkgs.pipes-attoparsec
              hsPkgs.transformers
              hsPkgs.lens
            ];
          };
        };
      };
    }