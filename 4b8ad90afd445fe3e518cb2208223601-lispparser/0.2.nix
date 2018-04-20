{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "lispparser";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Johnathan Tang 2008";
        maintainer = "eric.kow@gmail.com";
        author = "Johnathan Tang";
        homepage = "";
        url = "";
        synopsis = "Simple parser for LISP S-expressions";
        description = "\nA simple parser for LISP S-expressions, using Parsec.\n\nThis comes from Johnathan Tang's tutorial,\n/Write Yourself a Scheme in 48 Hours/.\n";
        buildType = "Simple";
      };
      components = {
        lispparser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }