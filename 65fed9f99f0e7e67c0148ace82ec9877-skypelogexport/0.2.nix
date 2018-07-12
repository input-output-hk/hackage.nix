{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "skypelogexport";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jdevelop@gmail.com";
        author = "Eugene Dzhurinsky";
        homepage = "https://github.com/jdevelop/skypelogexport/wiki";
        url = "";
        synopsis = "Export Skype chat logs to text files";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "skypelogexport" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.regex-pcre
              hsPkgs.haskell98
              hsPkgs.directory
              hsPkgs.old-locale
              hsPkgs.IfElse
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.utf8-string
              hsPkgs.attoparsec
              hsPkgs.ghc-binary
            ];
          };
        };
      };
    }