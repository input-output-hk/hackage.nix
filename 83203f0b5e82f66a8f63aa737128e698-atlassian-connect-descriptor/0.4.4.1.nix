{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "atlassian-connect-descriptor";
          version = "0.4.4.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "rmassaioli@atlassian.com";
        author = "Robert Massaioli";
        homepage = "";
        url = "";
        synopsis = "Code that helps you create a valid Atlassian Connect Descriptor.";
        description = "Allows you to generate an Atlassian Connect Descriptor in a typesafe manner and easily convert it\nit into JSON using the fantastic Aeson library.";
        buildType = "Simple";
      };
      components = {
        atlassian-connect-descriptor = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.time-units
            hsPkgs.cases
            hsPkgs.unordered-containers
          ] ++ [
            hsPkgs.network-uri
            hsPkgs.network
          ];
        };
        tests = {
          test-descriptor = {
            depends  = [
              hsPkgs.base
              hsPkgs.atlassian-connect-descriptor
              hsPkgs.Cabal
              hsPkgs.HUnit
              hsPkgs.vector
              hsPkgs.aeson
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.time-units
              hsPkgs.cases
              hsPkgs.unordered-containers
              hsPkgs.bytestring
            ] ++ [
              hsPkgs.network-uri
              hsPkgs.network
            ];
          };
        };
      };
    }