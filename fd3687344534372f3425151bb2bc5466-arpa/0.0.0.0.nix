{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arpa";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015, Stefan Fischer";
        maintainer = "Stefan Fischer <sfischer13@ymail.com>";
        author = "Stefan Fischer";
        homepage = "https://github.com/sfischer13/haskell-arpa";
        url = "";
        synopsis = "Library for reading ARPA n-gram models";
        description = "This is a library for reading ARPA n-gram models.";
        buildType = "Simple";
      };
      components = {
        arpa = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          arpa = {
            depends  = [
              hsPkgs.base
              hsPkgs.arpa
            ];
          };
        };
      };
    }