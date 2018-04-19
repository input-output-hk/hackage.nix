{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Safe";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Neil Mitchell";
        homepage = "http://www-users.cs.york.ac.uk/~ndm/projects/libraries.php";
        url = "";
        synopsis = "Library for safe (pattern match free) functions";
        description = "";
        buildType = "Custom";
      };
      components = {
        Safe = {
          depends  = [ hsPkgs.base ];
        };
      };
    }