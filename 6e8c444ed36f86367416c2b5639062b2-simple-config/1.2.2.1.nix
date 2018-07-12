{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "simple-config";
          version = "1.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yunomu@gmail.com";
        author = "YusukeNomura";
        homepage = "https://github.com/yunomu/simple-config";
        url = "";
        synopsis = "Simple config file parser generator";
        description = "Simple config file parser generator";
        buildType = "Simple";
      };
      components = {
        "simple-config" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.data-default
            hsPkgs.template-haskell
          ] ++ (if _flags.network-uri
            then [ hsPkgs.network-uri ]
            else [ hsPkgs.network ]);
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
            ];
          };
        };
      };
    }