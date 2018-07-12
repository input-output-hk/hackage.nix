{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "process-listlike";
          version = "0.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Lazar, Bas van Dijk, David Fox";
        homepage = "http://src.seereason.com/process-listlike";
        url = "";
        synopsis = "Enhanced version of process-extras";
        description = "Extra functionality for the Process library\n<http://hackage.haskell.org/package/process>.";
        buildType = "Simple";
      };
      components = {
        "process-listlike" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.HUnit
            hsPkgs.ListLike
            hsPkgs.listlike-instances
            hsPkgs.process
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
        exes = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.ListLike
              hsPkgs.listlike-instances
              hsPkgs.process
              hsPkgs.process-listlike
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.unix
            ];
          };
        };
      };
    }