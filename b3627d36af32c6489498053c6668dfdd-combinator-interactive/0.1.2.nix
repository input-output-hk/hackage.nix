{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "combinator-interactive";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 Fumiaki Kinoshita";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/combinator-interactive";
        url = "";
        synopsis = "SKI Combinator interpreter";
        description = "";
        buildType = "Simple";
      };
      components = {
        combinator-interactive = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.th-lift
            hsPkgs.void
            hsPkgs.trifecta
          ];
        };
        exes = {
          lazyi = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.void
              hsPkgs.trifecta
              hsPkgs.template-haskell
              hsPkgs.th-lift
              hsPkgs.combinator-interactive
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.cereal
              hsPkgs.directory
              hsPkgs.bytestring
            ];
          };
        };
      };
    }