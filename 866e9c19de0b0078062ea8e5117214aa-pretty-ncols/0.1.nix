{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pretty-ncols";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jfredett@gmail.com";
        author = "Joe Fredette";
        homepage = "";
        url = "";
        synopsis = "A implementation of multi-column layout w/ Text.PrettyPrint";
        description = "pretty-ncols allows for the following layouts to work nicely, so that:\nOne  Two  Three\n1    2    3\na    b    c\ncan be written as:\ncols_rowMajor = map text \$ [[\"One\", \"Two\", \"Three\"], [\"1\", \"2\",\"3\"], [\"a\",\"b\",\"c\"]]\ncols_colMajor = transpose \$ cols_rowMajors\nasColumns cols_rowMajor\nasColumns cols_colMajor";
        buildType = "Simple";
      };
      components = {
        pretty-ncols = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
          ];
        };
      };
    }