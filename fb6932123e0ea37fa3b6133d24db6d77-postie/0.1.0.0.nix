{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postie";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alex.biehl@gmail.com";
        author = "Alex Biehl";
        homepage = "";
        url = "";
        synopsis = "";
        description = "`postie` is a little smtp server library for receiving emails. It is currently\nin a very early stage and not yet standard compatible although the standard\nuse cases, e.g. receiving emails already work.";
        buildType = "Simple";
      };
      components = {
        postie = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.tls
            hsPkgs.pipes
            hsPkgs.pipes-parse
            hsPkgs.attoparsec
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.cprng-aes
            hsPkgs.data-default-class
          ];
        };
        exes = {
          simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tls
              hsPkgs.data-default-class
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.postie
            ];
          };
        };
      };
    }