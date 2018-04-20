{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-app-file-cgi";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/";
        url = "";
        synopsis = "File/CGI App of WAI";
        description = "This WAI application handles static files and\nexecutes CGI scripts.";
        buildType = "Simple";
      };
      components = {
        wai-app-file-cgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.haskell98
            hsPkgs.network
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.unix
            hsPkgs.containers
            hsPkgs.attoparsec
            hsPkgs.wai
            hsPkgs.enumerator
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.wai-app-static
          ];
        };
      };
    }