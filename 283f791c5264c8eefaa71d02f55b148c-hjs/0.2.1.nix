{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hjs";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Mark Wassell 2007";
        maintainer = "Mark Wassell <mwassell@bigpond.net.au>";
        author = "Mark Wassell";
        homepage = "http://www.haskell.org/haskellwiki/Libraries_and_tools/HJS";
        url = "";
        synopsis = "JavaScript Parser";
        description = "A Javascript parser and interpreter.\nWorks as per ECMA-262 plus some parts of JS >=1.5.";
        buildType = "Simple";
      };
      components = {
        hjs = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.directory
            hsPkgs.bytestring
          ];
        };
        exes = { hjs = {}; };
      };
    }