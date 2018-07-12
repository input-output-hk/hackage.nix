{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "duplo";
          version = "1.6.19";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ken@pixbi.com";
        author = "Kenneth Kan";
        homepage = "";
        url = "";
        synopsis = "Frontend development build tool";
        description = "Intuitive, simple building blocks for building composable, completely self-managed web applications";
        buildType = "Simple";
      };
      components = {
        "duplo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.ansi-terminal
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.executable-path
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.http-types
            hsPkgs.language-javascript
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.scotty
            hsPkgs.shake
            hsPkgs.system-fileio
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.MissingH
          ];
        };
        exes = {
          "duplo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.ansi-terminal
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.duplo
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.http-types
              hsPkgs.language-javascript
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.regex-compat
              hsPkgs.scotty
              hsPkgs.shake
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.MissingH
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.duplo
              hsPkgs.HUnit
              hsPkgs.MissingH
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }