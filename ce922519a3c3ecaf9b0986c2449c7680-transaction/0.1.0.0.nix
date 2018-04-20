{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transaction";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2018 Kadzuya Okamoto";
        maintainer = "arow.okamoto+github@gmail.com";
        author = "Kadzuya Okamoto";
        homepage = "https://github.com/arowM/haskell-transaction#readme";
        url = "";
        synopsis = "Monadic representation of transactions.";
        description = "Monadic representation of transactions.";
        buildType = "Simple";
      };
      components = {
        transaction = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          transaction-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.transaction
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
              hsPkgs.transaction
            ];
          };
        };
      };
    }