{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transaction";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "2018 Kadzuya Okamoto";
        maintainer = "arow.okamoto+github@gmail.com";
        author = "Kadzuya Okamoto";
        homepage = "https://github.com/arowM/haskell-transaction#readme";
        url = "";
        synopsis = "Monadic representation of transactions.";
        description = "Monadic representation of transactions. Alike `List`, but can be declared with `do` notations.";
        buildType = "Simple";
      };
      components = {
        transaction = {
          depends  = [
            hsPkgs.base
            hsPkgs.mono-traversable
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          transaction-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mono-traversable
              hsPkgs.QuickCheck
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