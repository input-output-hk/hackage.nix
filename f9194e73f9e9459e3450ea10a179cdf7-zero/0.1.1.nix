{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zero";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Dimitri Sabadie";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "https://github.com/phaazon/zero";
        url = "";
        synopsis = "Semigroups with absorption";
        description = "'Monoid' is a 'Semigroup' glued with a neutral element\ncalled 'mempty'. In the same idea, 'Zero' is a 'Semigroup'\nglued with an absorbing element called 'zero'.\n\nKeep in mind that 'Zero' requires 'Semigroup'. If you have\n'Semigroup' defined to work with 'Monoid', you might end up\nwith no way to implement 'Zero'. That’s why the 'Semigroup'\ninstance for 'Maybe' is confusing, because it relies on\n'Monoid', and cannot be used with 'Zero'. 'Success' is the\n'Zero' equivalent of 'Maybe' + 'Monoid'.";
        buildType = "Simple";
      };
      components = {
        zero = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
          ];
        };
      };
    }