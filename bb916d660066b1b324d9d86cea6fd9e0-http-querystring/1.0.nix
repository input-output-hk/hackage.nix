{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-querystring";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yusuke Nomura<yunomu@gmail.com>";
        author = "Yusuke Nomura<yunomu@gmail.com>";
        homepage = "https://github.com/worksap-ate/http-querystring";
        url = "";
        synopsis = "The HTTP query builder.";
        description = "The HTTP query builder.";
        buildType = "Simple";
      };
      components = {
        "http-querystring" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.http-types
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.http-types
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
            ];
          };
        };
      };
    }