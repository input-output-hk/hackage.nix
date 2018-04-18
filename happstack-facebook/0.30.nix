{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      formlets = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-facebook";
          version = "0.30";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "http://src.seereason.com/happstack-facebook/";
        url = "";
        synopsis = "A package for building Facebook applications using Happstack";
        description = "A package for building Facebook applications using Happstack";
        buildType = "Custom";
      };
      components = {
        happstack-facebook = {
          depends  = ([
            hsPkgs.base
            hsPkgs.hsp
            hsPkgs.harp
            hsPkgs.happstack-ixset
            hsPkgs.happstack-hsp
            hsPkgs.happstack-data
            hsPkgs.happstack-util
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.happstack-state
            hsPkgs.html
            hsPkgs.happstack-server
            hsPkgs.hsx
            hsPkgs.applicative-extras
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.RJson
            hsPkgs.old-time
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.happstack
            hsPkgs.json
            hsPkgs.web-routes
            hsPkgs.web-routes-mtl
            hsPkgs.filepath
            hsPkgs.text
          ] ++ optionals _flags.base4 [
            hsPkgs.base
            hsPkgs.syb
          ]) ++ optionals _flags.formlets [
            hsPkgs.happstack-extra
            hsPkgs.formlets
            hsPkgs.formlets-hsp
          ];
        };
        exes = { demo = {}; };
      };
    }