{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "git-object";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/";
        url = "";
        synopsis = "Git object and its parser";
        description = "This package provides data types for\nGit objects, enumerator-based parser\nof Git object files and manipulation\nfunctions.";
        buildType = "Simple";
      };
      components = {
        "git-object" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.zlib-enum
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.attoparsec
            hsPkgs.enumerator
            hsPkgs.attoparsec-enumerator
          ];
        };
      };
    }