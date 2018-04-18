{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heredocs";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "cutsea110";
        homepage = "http://github.com/cutsea110/heredoc.git";
        url = "";
        synopsis = "heredocument";
        description = "heredocument";
        buildType = "Simple";
      };
      components = {
        heredocs = {
          depends  = [
            hsPkgs.base
            hsPkgs.doctest
            hsPkgs.parsec
            hsPkgs.template-haskell
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.heredocs
            ];
          };
        };
      };
    }