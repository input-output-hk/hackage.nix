{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      nano-md5 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "feed2lj";
          version = "0.0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "(unsupported)";
        description = "(unsupported)";
        buildType = "Simple";
      };
      components = {
        exes = {
          "feed2lj" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.old-locale
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.utf8-string
              hsPkgs.regex-posix
              hsPkgs.HTTP
              hsPkgs.curl
              hsPkgs.feed
              hsPkgs.tagsoup
            ] ++ (if _flags.nano-md5
              then [ hsPkgs.nano-md5 ]
              else [ hsPkgs.pureMD5 ]);
          };
        };
      };
    }