{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "heredoc";
          version = "0.2.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "jameshfisher@gmail.com";
        author = "James H. Fisher";
        homepage = "http://hackage.haskell.org/package/heredoc";
        url = "";
        synopsis = "multi-line string / here document using QuasiQuotes";
        description = "multi-line string / here document using QuasiQuotes";
        buildType = "Simple";
      };
      components = {
        "heredoc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }