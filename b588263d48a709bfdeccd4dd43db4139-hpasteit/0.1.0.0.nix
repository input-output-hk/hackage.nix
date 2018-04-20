{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hpasteit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Patrick Palka";
        maintainer = "patrick@parcs.ath.cx";
        author = "Patrick Palka";
        homepage = "http://github.com/parcs/hpasteit";
        url = "";
        synopsis = "A command-line client for hpaste.org";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          hpasteit = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lifted-base
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }