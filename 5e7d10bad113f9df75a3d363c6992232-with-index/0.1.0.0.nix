{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "with-index";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Phil Freeman";
        maintainer = "Phil Freeman";
        author = "Phil Freeman";
        homepage = "https://github.com/paf31/with-index";
        url = "";
        synopsis = "A tiny library for composing indexed traversals";
        description = "";
        buildType = "Simple";
      };
      components = {
        "with-index" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }