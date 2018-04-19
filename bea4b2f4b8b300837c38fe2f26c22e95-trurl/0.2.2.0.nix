{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "trurl";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "d.bushenko@gmail.com";
        author = "dbushenko";
        homepage = "http://github.com/dbushenko/trurl";
        url = "";
        synopsis = "Haskell template code generator";
        description = "";
        buildType = "Simple";
      };
      components = {
        trurl = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.tar
            hsPkgs.hastache
            hsPkgs.aeson
            hsPkgs.scientific
            hsPkgs.unordered-containers
            hsPkgs.MissingH
            hsPkgs.filemanip
          ];
        };
        exes = {
          trurl = {
            depends  = [
              hsPkgs.base
              hsPkgs.trurl
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hastache
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.trurl
            ];
          };
        };
      };
    }