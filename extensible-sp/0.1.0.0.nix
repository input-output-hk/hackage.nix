{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extensible-sp";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Jason Adaska";
        maintainer = "jadaska@gmail.com";
        author = "Jason Adaska";
        homepage = "https://github.com/githubuser/extensible-sp#readme";
        url = "";
        synopsis = "light-weight, extensible sums and products over types and kinds";
        description = "The extensible-sp module provides a simple and straight-forward interface to anonymous, extensible sum types (e.g., Either) and product types (e.g., (,)).  Generalizations to higher kinded types are provided as well.";
        buildType = "Simple";
      };
      components = {
        extensible-sp = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
          ];
        };
      };
    }