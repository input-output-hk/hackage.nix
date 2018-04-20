{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "flo";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Generate flow charts from your code base.";
        description = "See \"Development.Flo\" for syntax and examples. Example commandline usage:\n@\nfind . | grep '\\.js\$' | xargs flo '-js=\\/\\/\\/ ' | dot -Tpng > flow.png\n@";
        buildType = "Simple";
      };
      components = {
        flo = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.regex-compat
            hsPkgs.mtl-compat
          ];
        };
        exes = {
          flo = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.regex-compat
            ];
          };
        };
      };
    }