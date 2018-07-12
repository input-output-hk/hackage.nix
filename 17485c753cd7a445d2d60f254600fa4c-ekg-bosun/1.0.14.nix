{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-bosun";
          version = "1.0.14";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Oliver Charles";
        homepage = "http://github.com/ocharles/ekg-bosun";
        url = "";
        synopsis = "Send ekg metrics to a Bosun instance";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ekg-bosun" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.ekg-core
            hsPkgs.http-client
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.wreq
            hsPkgs.old-locale
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [
              hsPkgs.network
              hsPkgs.network-uri
            ]);
        };
      };
    }