{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gitignore";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Ricky Elrod";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod";
        homepage = "https://github.com/relrod/gitignore";
        url = "";
        synopsis = "Apply GitHub .gitignore templates to already existing repositories.";
        description = "Apply GitHub .gitignore templates to already existing repositories.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "gitignore" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.http-conduit
              hsPkgs.network
              hsPkgs.safe
              hsPkgs.text
            ];
          };
        };
      };
    }