{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hamtsolo";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Jacek Galowicz";
        maintainer = "jacek@galowicz.de";
        author = "Jacek Galowicz";
        homepage = "https://github.com/tfc/hamtsolo#readme";
        url = "";
        synopsis = "Intel AMT serial-over-lan (SOL) client";
        description = "hamtsolo lets you connect to Intel computers with enabled\nAMT and establish a serial-over-lan (SOL) connection.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hamtsolo" = {
            depends  = [
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.attoparsec-binary
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.exceptions
              hsPkgs.gitrev
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.stm-conduit
              hsPkgs.unix
            ];
          };
        };
      };
    }