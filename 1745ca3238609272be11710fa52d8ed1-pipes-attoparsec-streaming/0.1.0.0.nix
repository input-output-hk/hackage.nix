{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-attoparsec-streaming";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyrght (c) 2012 Martin Grabmueller";
        maintainer = "martin@grabmueller.de";
        author = "Martin Grabmueller";
        homepage = "";
        url = "";
        synopsis = "Streaming parsing in the pipes-core framework with Attoparsec.";
        description = "This module exports the single function parse, which can be used to\nrun an Attoparsec parser in a streaming fashion, which means that\nthe parser is not only run incrementally across the input (which\ncan be done with plain Attoparsec or packages like\npipes-attoparsec), but that the parse results are delivered\nincrementally.  This package can be seen as a kind of dual to\npipes-attoparsec: the latter runs parser incrementally over their\ninput, whereas the former incrementally delivers output.";
        buildType = "Simple";
      };
      components = {
        pipes-attoparsec-streaming = {
          depends  = [
            hsPkgs.base
            hsPkgs.pipes-core
            hsPkgs.attoparsec
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
        };
        exes = {
          MimeParser = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-core
              hsPkgs.attoparsec
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.pipes-attoparsec-streaming
            ];
          };
        };
      };
    }