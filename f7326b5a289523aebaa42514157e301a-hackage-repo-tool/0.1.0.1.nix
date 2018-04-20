{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use-network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackage-repo-tool";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2015 Well-Typed LLP";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries";
        homepage = "http://github.com/well-typed/hackage-security/";
        url = "";
        synopsis = "Utility to manage secure file-based package repositories";
        description = "This utility can be used to manage secure file-based\nrepositories (creating TUF metadata as well as a Hackage\nindex tarball). Currently it also provides various\nlower level utilities for creating and signing TUF files.\n\nThis is part of the Hackage Security infrastructure.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackage-repo-tool = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.tar
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.zlib
              hsPkgs.hackage-security
            ] ++ (if _flags.use-network-uri
              then [
                hsPkgs.network-uri
                hsPkgs.network
              ]
              else [ hsPkgs.network ]);
          };
        };
      };
    }