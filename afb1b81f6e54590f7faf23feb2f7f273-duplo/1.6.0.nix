{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "duplo";
          version = "1.6.0";
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
        exes = {
          duplo = {
            depends  = [
              hsPkgs.base
              hsPkgs.MissingH
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.executable-path
              hsPkgs.filepath
              hsPkgs.filepather
              hsPkgs.fsnotify
              hsPkgs.http-types
              hsPkgs.language-javascript
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.regex-compat
              hsPkgs.scotty
              hsPkgs.shake
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.ansi-terminal
              hsPkgs.text-format
            ];
          };
        };
      };
    }