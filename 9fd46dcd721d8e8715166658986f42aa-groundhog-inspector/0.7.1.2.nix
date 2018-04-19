{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      sqlite = true;
      postgresql = false;
      mysql = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "groundhog-inspector";
          version = "0.7.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Boris Lykah <lykahb@gmail.com>";
        author = "Boris Lykah <lykahb@gmail.com>";
        homepage = "http://github.com/lykahb/groundhog";
        url = "";
        synopsis = "Type-safe datatype-database mapping library.";
        description = "This library analyzes database tables and creates corresponding datatypes and their mappings for Groundhog <https://www.fpcomplete.com/user/lykahb/groundhog>. See examples at <https://github.com/lykahb/groundhog/tree/master/groundhog-inspector/examples>.";
        buildType = "Simple";
      };
      components = {
        groundhog-inspector = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.groundhog
            hsPkgs.groundhog-th
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.aeson-pretty
            hsPkgs.text
            hsPkgs.regex-compat
            hsPkgs.syb
          ];
        };
        exes = {
          groundhog_inspector = {
            depends  = (([
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.groundhog
              hsPkgs.groundhog-th
              hsPkgs.groundhog-inspector
            ] ++ pkgs.lib.optional _flags.sqlite hsPkgs.groundhog-sqlite) ++ pkgs.lib.optional _flags.postgresql hsPkgs.groundhog-postgresql) ++ pkgs.lib.optional _flags.mysql hsPkgs.groundhog-mysql;
          };
        };
      };
    }