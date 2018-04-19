{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "AGI";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://www.n-heptane.com/nhlab/repos/haskell-agi";
        url = "";
        synopsis = "A library for writing AGI scripts for Asterisk";
        description = "Asterisk is an open-source Voice over IP server\n(VoIP). Asterisk provides a Asterisk Gateway Interface (AGI), which\ncan be used to write external programs that interact with\nAsterisk. It is typically used for creating Interactive Voice\nResponse (IVR) systems.";
        buildType = "Custom";
      };
      components = {
        AGI = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
          ];
        };
      };
    }