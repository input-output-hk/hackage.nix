{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-dart";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Kwang Yul Seo 2016";
        maintainer = "kwangyul.seo@gmail.com";
        author = "Kwang Yul Seo";
        homepage = "https://github.com/kseo/language-dart#readme";
        url = "";
        synopsis = "Manipulating Dart source: abstract syntax and pretty-printer";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "language-dart" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
          ];
        };
        tests = {
          "language-dart-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.language-dart
            ];
          };
        };
      };
    }