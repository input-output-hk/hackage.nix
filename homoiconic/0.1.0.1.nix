{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "homoiconic";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike Izbicki";
        homepage = "github.com/mikeizbicki/homoiconic";
        url = "";
        synopsis = "Constructs FAlgebras from typeclasses, making Haskell functions homoiconic";
        description = "This library lets you automatically create FAlgebras for many type classes. From these FAlgebras and the free monad, we can generate abstract syntax trees for the type class. This lets us make many functions homoiconic.";
        buildType = "Simple";
      };
      components = {
        homoiconic = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          Homogeneous = {
            depends  = [
              hsPkgs.base
              hsPkgs.homoiconic
            ];
          };
          Heterogeneous = {
            depends  = [
              hsPkgs.base
              hsPkgs.homoiconic
            ];
          };
          Constrained = {
            depends  = [
              hsPkgs.base
              hsPkgs.homoiconic
            ];
          };
        };
      };
    }