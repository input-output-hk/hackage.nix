{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tagsoup-megaparsec";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "BSD3";
        maintainer = "kwangyul.seo@gmail.com";
        author = "Kwang Yul Seo";
        homepage = "https://github.com/kseo/tagsoup-megaparsec#readme";
        url = "";
        synopsis = "A Tag token parser and Tag specific parsing combinators";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        tagsoup-megaparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.megaparsec
            hsPkgs.tagsoup
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tagsoup-megaparsec-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.megaparsec
              hsPkgs.raw-strings-qq
              hsPkgs.tagsoup
              hsPkgs.tagsoup-megaparsec
            ];
          };
        };
      };
    }