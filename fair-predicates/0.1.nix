{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fair-predicates";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "sebf@informatik.uni-kiel.de";
        author = "Sebastian Fischer";
        homepage = "http://sebfisch.github.com/fair-predicates";
        url = "";
        synopsis = "Fair Predicates";
        description = "This Haskell library provides an implementation of Boolean\npredicates with an interleaved evaluation of arguments.";
        buildType = "Simple";
      };
      components = {
        fair-predicates = {
          depends  = [ hsPkgs.base ];
        };
      };
    }