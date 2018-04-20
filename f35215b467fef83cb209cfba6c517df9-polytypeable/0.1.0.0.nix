{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "polytypeable";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Oleg Kiselyov, Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Typeable for polymorphic types.";
        description = "Typeable for polymorphic types.";
        buildType = "Simple";
      };
      components = {
        polytypeable = {
          depends  = [ hsPkgs.base ];
        };
      };
    }