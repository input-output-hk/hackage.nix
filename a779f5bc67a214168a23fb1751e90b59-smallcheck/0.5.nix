{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smallcheck";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Colin Runciman";
        homepage = "https://github.com/feuerbach/smallcheck";
        url = "";
        synopsis = "Another lightweight testing library in Haskell.";
        description = "SmallCheck is similar to QuickCheck (Claessen and Hughes 2000-) but\ninstead of testing for a sample of randomly generated values, SmallCheck\ntests properties for all the finitely many values up to some depth,\nprogressively increasing the depth used.";
        buildType = "Simple";
      };
      components = {
        smallcheck = {
          depends  = [ hsPkgs.base ];
        };
      };
    }