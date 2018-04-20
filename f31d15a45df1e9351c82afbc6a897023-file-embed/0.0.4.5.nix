{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "file-embed";
          version = "0.0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "https://github.com/snoyberg/file-embed";
        url = "";
        synopsis = "Use Template Haskell to embed file contents directly.";
        description = "";
        buildType = "Simple";
      };
      components = {
        file-embed = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.template-haskell
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.file-embed
            ];
          };
        };
      };
    }