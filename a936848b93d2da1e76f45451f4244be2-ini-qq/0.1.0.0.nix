{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ini-qq";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "BSD3";
        maintainer = "kwangyul.seo@gmail.com";
        author = "Kwang Yul Seo";
        homepage = "https://github.com/kseo/ini-qq#readme";
        url = "";
        synopsis = "Quasiquoter for INI";
        description = "This library provides quasiquoters for the ini package.";
        buildType = "Simple";
      };
      components = {
        ini-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.ini
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
        tests = {
          ini-qq-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.ini
              hsPkgs.ini-qq
              hsPkgs.raw-strings-qq
              hsPkgs.text
            ];
          };
        };
      };
    }