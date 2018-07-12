{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haste = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haste-app";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anton@ekblad.cc";
        author = "Anton Ekblad";
        homepage = "http://haste-lang.org";
        url = "";
        synopsis = "Framework for type-safe, distributed web applications.";
        description = "Framework for quick development of tierless web applications.";
        buildType = "Simple";
      };
      components = {
        "haste-app" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.haste-lib
            hsPkgs.haste-prim
            hsPkgs.containers
          ] ++ pkgs.lib.optionals (!_flags.haste) [
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.websockets
            hsPkgs.wai
            hsPkgs.wai-websockets
            hsPkgs.warp
          ];
        };
      };
    }