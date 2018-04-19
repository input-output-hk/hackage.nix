{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-fetch";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2017 Moritz Kiefer";
        maintainer = "moritz.kiefer@purelyfunctional.org";
        author = "Moritz Kiefer";
        homepage = "https://github.com/cocreature/ghcjs-fetch#readme";
        url = "";
        synopsis = "GHCJS bindings for the JavaScript Fetch API";
        description = "";
        buildType = "Simple";
      };
      components = {
        ghcjs-fetch = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.http-types
          ] ++ (if compiler.isGhcjs
            then [ hsPkgs.ghcjs-base ]
            else [
              hsPkgs.ghcjs-base-stub
            ]);
        };
        tests = {
          ghcjs-fetch-test = {
            depends  = pkgs.lib.optionals (!(!compiler.isGhcjs)) [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.ghcjs-base
              hsPkgs.ghcjs-fetch
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.http-types
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }