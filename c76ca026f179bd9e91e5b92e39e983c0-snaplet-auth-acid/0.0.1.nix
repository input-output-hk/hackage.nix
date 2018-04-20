{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snaplet-auth-acid";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "djohnson.m@gmail.com";
        author = "Ben Doyle";
        homepage = "";
        url = "";
        synopsis = "Provides an Acid-State backend for the Auth Snaplet";
        description = "Project Description Here";
        buildType = "Simple";
      };
      components = {
        snaplet-auth-acid = {
          depends  = [
            hsPkgs.base
            hsPkgs.acid-state
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.cereal
            hsPkgs.clientsession
            hsPkgs.errors
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.lens
            hsPkgs.snap-core
            hsPkgs.safecopy
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }