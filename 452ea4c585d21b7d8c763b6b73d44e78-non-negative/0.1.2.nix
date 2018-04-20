{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "non-negative";
          version = "0.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/non-negative/";
        url = "";
        synopsis = "Non-negative numbers";
        description = "Provides a class for non-negative numbers,\na wrapper which can turn any ordered numeric type into a member of that class,\nand a lazy number type for non-negative numbers\n(a generalization of Peano numbers).\nThis library is used by the @event-list@ package.";
        buildType = "Simple";
      };
      components = {
        non-negative = {
          depends  = [
            hsPkgs.semigroups
            hsPkgs.utility-ht
            hsPkgs.QuickCheck
          ] ++ [ hsPkgs.base ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.semigroups
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }