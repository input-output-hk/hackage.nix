{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AttoJson";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mr_konn _at_ jcom.home.ne.jp";
        author = "Hiromi ISHII";
        homepage = "http://github.com/konn/AttoJSON";
        url = "";
        synopsis = "Simple lightweight JSON parser & generator based on ByteString";
        description = "Simple Lightweight JSON parser & generator based on ByteString.";
        buildType = "Simple";
      };
      components = {
        "AttoJson" = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
            hsPkgs.bytestring-show
            hsPkgs.utf8-string
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
        };
      };
    }