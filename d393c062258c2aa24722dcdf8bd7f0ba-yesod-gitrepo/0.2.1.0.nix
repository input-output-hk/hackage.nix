{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-gitrepo";
          version = "0.2.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/yesod-gitrepo";
        url = "";
        synopsis = "Host content provided by a Git repo";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        yesod-gitrepo = {
          depends  = [
            hsPkgs.base
            hsPkgs.temporary
            hsPkgs.directory
            hsPkgs.yesod-core
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.process
            hsPkgs.lifted-base
            hsPkgs.text
            hsPkgs.enclosed-exceptions
          ];
        };
      };
    }