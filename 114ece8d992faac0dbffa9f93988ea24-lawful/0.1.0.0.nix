{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lawful";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2018 Matt Noonan";
        maintainer = "matt.noonan@gmail.com";
        author = "Matt Noonan";
        homepage = "https://github.com/matt-noonan/lawful#readme";
        url = "";
        synopsis = "Assert the lawfulness of your typeclass instances.";
        description = "Assert the lawfulness of your typeclass instances.";
        buildType = "Simple";
      };
      components = {
        lawful = {
          depends  = [ hsPkgs.base ];
        };
      };
    }