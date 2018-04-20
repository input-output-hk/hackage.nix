{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hs-twitterarchiver";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "deepak.jois@gmail.com";
        author = "Deepak Jois";
        homepage = "http://github.com/deepakjois/hs-twitterarchiver";
        url = "";
        synopsis = "Commandline Twitter feed archiver";
        description = "`hs-twitterarchiver ` is a tool for generating an archive\nof a user's Twitter feed, in a file on a local computer\nusing JSON format.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hs-twitterarchiver = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.json
              hsPkgs.HTTP
            ];
          };
        };
      };
    }