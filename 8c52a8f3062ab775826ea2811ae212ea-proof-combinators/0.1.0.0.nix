{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "proof-combinators";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nikivazou@gmail.com";
        author = "Niki Vazou";
        homepage = "http://nikivazou.github.io/";
        url = "";
        synopsis = "Proof Combinators used in Liquid Haskell for Theorem Proving";
        description = "";
        buildType = "Simple";
      };
      components = {
        proof-combinators = {
          depends  = [ hsPkgs.base ];
        };
      };
    }