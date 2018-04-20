{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "AGI";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://www.n-heptane.com/nhlab/repos/haskell-agi";
        url = "";
        synopsis = "A library for writing AGI scripts for Asterisk";
        description = "Asterisk is an open-source Voice over IP server (VoIP).\nAsterisk provides an Asterisk Gateway Interface (AGI), which\ncan be used to write external programs that interact with\nAsterisk. It is typically used for creating Interactive Voice\nResponse (IVR) systems.";
        buildType = "Simple";
      };
      components = {
        AGI = {
          depends  = [
            hsPkgs.parsec
            hsPkgs.mtl
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.unix
            ]
            else [ hsPkgs.base ]);
        };
      };
    }