{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pisigma";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
        author = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
        homepage = "";
        url = "";
        synopsis = "dependently typed core language";
        description = "dependently typed core language";
        buildType = "Simple";
      };
      components = {
        exes = {
          pisigma = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.haskeline
              hsPkgs.parsec
              hsPkgs.ansi-wl-pprint
            ];
          };
        };
      };
    }