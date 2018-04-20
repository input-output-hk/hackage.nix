{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fixed-storable-array";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chowells79@gmail.com";
        author = "Carl Howells";
        homepage = "";
        url = "";
        synopsis = "Fixed-size wrapper for StorableArrays, with its own\nStorable instance";
        description = "Uses type-level numeric literals to wrap @StorableArray@\nin a type that statically fixes its size. This allows the\nwrapper to have its own @Storable@ instance, which allows\neasy integration with fixed-size native arrays.";
        buildType = "Simple";
      };
      components = {
        fixed-storable-array = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }