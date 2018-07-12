{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-smuggler";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Ben Clifford";
        maintainer = "Ben Clifford <benc@hawaga.org.uk>";
        author = "Ben Clifford <benc@hawaga.org.uk>";
        homepage = "https://github.com/benclifford/acme-smuggler";
        url = "";
        synopsis = "Smuggle arbitrary values in ()";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "acme-smuggler" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "acme-smuggler-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.acme-smuggler
              hsPkgs.hspec
            ];
          };
        };
      };
    }