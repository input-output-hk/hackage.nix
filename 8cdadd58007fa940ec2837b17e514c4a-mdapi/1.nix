{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mdapi";
          version = "1";
        };
        license = "BSD-2-Clause";
        copyright = "(c) 2015 Red Hat, Inc.";
        maintainer = "relrod@redhat.com";
        author = "Ricky Elrod";
        homepage = "https://github.com/relrod/mdapi-hs";
        url = "";
        synopsis = "Haskell interface to Fedora's mdapi";
        description = "Provides access to the <http://apps.fedoraproject.org/mdapi/ Fedora mdapi> API.";
        buildType = "Simple";
      };
      components = {
        "mdapi" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wreq
          ];
        };
      };
    }