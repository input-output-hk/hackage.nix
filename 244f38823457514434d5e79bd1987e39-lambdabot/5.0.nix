{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lambdabot";
          version = "5.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook";
        homepage = "http://haskell.org/haskellwiki/Lambdabot";
        url = "";
        synopsis = "Lambdabot is a development tool and advanced IRC bot";
        description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "lambdabot" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lambdabot-core
              hsPkgs.lambdabot-haskell-plugins
              hsPkgs.lambdabot-irc-plugins
              hsPkgs.lambdabot-misc-plugins
              hsPkgs.lambdabot-novelty-plugins
              hsPkgs.lambdabot-reference-plugins
              hsPkgs.lambdabot-social-plugins
            ];
          };
        };
      };
    }