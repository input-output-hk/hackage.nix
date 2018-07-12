{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-default-instances-unordered-containers";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2016, Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško";
        homepage = "https://github.com/trskop/data-default-extra";
        url = "";
        synopsis = "Default instances for unordered-containers.";
        description = "Orphan instances for @Default@ type class, which is defined in package\n<https://hackage.haskell.org/package/data-default-class data-default-class>.\n\nFollowing @Default@ instances are provided:\n\n> instance Default (HashMap k v) where\n>     def = empty\n>\n> instance Default (HashSet a) where\n>     def = empty";
        buildType = "Simple";
      };
      components = {
        "data-default-instances-unordered-containers" = {
          depends  = [
            hsPkgs.unordered-containers
            hsPkgs.data-default-class
          ];
        };
      };
    }