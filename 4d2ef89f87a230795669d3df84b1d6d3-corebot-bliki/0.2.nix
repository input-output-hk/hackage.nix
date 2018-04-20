{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "corebot-bliki";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Corey O'Connor<coreyoconnor@gmail.com>";
        author = "";
        homepage = "http://github.com/coreyoconnor/corebot-bliki";
        url = "";
        synopsis = "A bliki written using yesod. Uses pandoc to process files stored in git.";
        description = "Also provides a sample use of the library that uses \$HOME/bliki for data and serves\nto port 8080.\nSee http://www.corebotllc.com for public site built using this library.";
        buildType = "Simple";
      };
      components = {
        corebot-bliki = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.filestore
            hsPkgs.http-types
            hsPkgs.monads-tf
            hsPkgs.pandoc
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.yesod
          ];
        };
        exes = {
          corebot-bliki = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.filestore
              hsPkgs.http-types
              hsPkgs.monads-tf
              hsPkgs.pandoc
              hsPkgs.text
              hsPkgs.template-haskell
              hsPkgs.time
              hsPkgs.yesod
            ];
          };
        };
      };
    }