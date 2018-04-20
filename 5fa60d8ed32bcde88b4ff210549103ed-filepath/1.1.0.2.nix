{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "filepath";
          version = "1.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Neil Mitchell";
        homepage = "http://www-users.cs.york.ac.uk/~ndm/filepath/";
        url = "";
        synopsis = "Library for manipulating FilePath's in a cross platform way.";
        description = "";
        buildType = "Simple";
      };
      components = {
        filepath = {
          depends  = [ hsPkgs.base ];
        };
      };
    }