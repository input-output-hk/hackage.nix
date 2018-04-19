{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hichi";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Sergei Trofimovich <slyfox@inbox.ru>";
        author = "Sergei Trofimovich <slyfox@inbox.ru>";
        homepage = "";
        url = "";
        synopsis = "haskell robot for IChat protocol";
        description = "haskell robot for IChat protocol";
        buildType = "Simple";
      };
      components = {
        exes = {
          hichi = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.array
            ];
          };
          test-rc4 = {};
        };
      };
    }