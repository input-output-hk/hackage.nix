{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "publicsuffixlist";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
        author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
        homepage = "https://github.com/litherum/publicsuffixlist";
        url = "";
        synopsis = "Is a given string a domain suffix?";
        description = "Is a given string a domain suffix?";
        buildType = "Simple";
      };
      components = {
        publicsuffixlist = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.cereal
          ];
        };
        tests = {
          test-public-suffix-list = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.idna
              hsPkgs.utf8-string
              hsPkgs.cereal
              hsPkgs.bytestring
            ];
          };
        };
      };
    }