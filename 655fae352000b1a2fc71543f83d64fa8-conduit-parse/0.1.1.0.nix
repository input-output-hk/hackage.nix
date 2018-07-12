{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-parse";
          version = "0.1.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral <koral@mailoo.org>";
        author = "koral <koral@mailoo.org>";
        homepage = "https://github.com/k0ral/conduit-parse";
        url = "";
        synopsis = "Parsing framework based on conduit.";
        description = "Please refer to README.";
        buildType = "Simple";
      };
      components = {
        "conduit-parse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.dlist
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.parsers
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.conduit-parse
              hsPkgs.exceptions
              hsPkgs.hlint
              hsPkgs.mtl
              hsPkgs.parsers
              hsPkgs.resourcet
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }