{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regexpr-symbolic";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "martin.sulzmann@gmail.com";
        author = "Martin Sulzmann";
        homepage = "";
        url = "";
        synopsis = "Equality, containment, intersection among regular expressions via symbolic manipulation";
        description = "Equality, containment, intersection among regular expressions via symbolic manipulation";
        buildType = "Simple";
      };
      components = {
        regexpr-symbolic = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
        };
      };
    }