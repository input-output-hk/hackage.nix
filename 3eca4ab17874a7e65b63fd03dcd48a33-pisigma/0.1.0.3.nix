{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pisigma";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
        author = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>,\nNils Anders Danielsson <nad@cs.nott.ac.uk>,\nNicolas Oury <Nicolas.Oury@ed.ac.uk>,\nDarin Morrison <dwm@cs.nott.ac.uk>";
        homepage = "";
        url = "";
        synopsis = "dependently typed core language";
        description = "dependently typed core language";
        buildType = "Simple";
      };
      components = {
        "pisigma" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.haskeline
            hsPkgs.haskeline-class
            hsPkgs.mpppc
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
        exes = { "pisigma" = {}; };
      };
    }