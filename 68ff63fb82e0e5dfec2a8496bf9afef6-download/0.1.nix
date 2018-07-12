{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "download";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008, Don Stewart <dons@galois.com>";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/download";
        url = "";
        synopsis = "High-level file download based on URLs";
        description = "High-level File download based on URLs\n\nDownload content as bytestrings, strings or parsed\ntags, via ftp, http or file protocols.";
        buildType = "Simple";
      };
      components = {
        "download" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.tagsoup
          ];
        };
      };
    }