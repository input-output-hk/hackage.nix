{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shakespeare-babel";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "ncaq@ncaq.net";
        author = "ncaq";
        homepage = "";
        url = "";
        synopsis = "compile es2015";
        description = "";
        buildType = "Simple";
      };
      components = {
        shakespeare-babel = {
          depends  = [
            hsPkgs.base
            hsPkgs.shakespeare
            hsPkgs.classy-prelude
            hsPkgs.template-haskell
          ];
        };
      };
    }