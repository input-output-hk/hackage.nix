{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pagure-hook-receiver";
          version = "0.1.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "relrod@redhat.com";
        author = "Ricky Elrod";
        homepage = "https://pagure.io/pagure-hook-receiver";
        url = "";
        synopsis = "Receive hooks from pagure and do things with them";
        description = "";
        buildType = "Simple";
      };
      components = {
        pagure-hook-receiver = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.scotty
            hsPkgs.shelly
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
          ];
        };
      };
    }