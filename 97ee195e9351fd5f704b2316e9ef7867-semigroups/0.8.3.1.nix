{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base2 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "semigroups";
          version = "0.8.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/semigroups/";
        url = "";
        synopsis = "Haskell 98 semigroups";
        description = "Haskell 98 semigroups\n\nIn mathematics, a semigroup is an algebraic structure consisting of a set together with an associative binary operation. A semigroup generalizes a monoid in that there might not exist an identity element. It also (originally) generalized a group (a monoid with all inverses) to a type where every element did not have to have an inverse, thus the name semigroup.";
        buildType = "Simple";
      };
      components = {
        semigroups = {
          depends  = if _flags.base2
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.containers
            ];
        };
      };
    }