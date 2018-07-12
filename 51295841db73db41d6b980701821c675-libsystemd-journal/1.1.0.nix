{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libsystemd-journal";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Oliver Charles (c) 2014";
        maintainer = "ollie@ocharles.org.uk";
        author = "Oliver Charles";
        homepage = "http://github.com/ocharles/libsystemd-journal";
        url = "";
        synopsis = "Haskell bindings to libsystemd-journal";
        description = "";
        buildType = "Custom";
      };
      components = {
        "libsystemd-journal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.pipes
            hsPkgs.pipes-safe
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix-bytestring
            hsPkgs.vector
            hsPkgs.uuid
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.hsyslog
            hsPkgs.uniplate
          ];
          libs = [ pkgs.systemd-journal ];
        };
      };
    }