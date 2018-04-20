{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "selinux";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stegeman@gmail.com";
        author = "Luite Stegeman";
        homepage = "https://github.com/luite/selinux";
        url = "";
        synopsis = "SELinux bindings";
        description = "Haskell bindings for the SELinux API";
        buildType = "Simple";
      };
      components = {
        selinux = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
          libs = [ pkgs.selinux ];
        };
      };
    }