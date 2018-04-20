{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hcc";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "A toy C compiler.";
        description = "A toy C compiler.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hcc = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.language-c
            ];
          };
        };
      };
    }