{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "docidx";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Andy Gimblett <haskell@gimbo.org.uk>, Andy Price <andy@andrewprice.me.uk>";
        maintainer = "Andy Gimblett <haskell@gimbo.org.uk>";
        author = "Andy Gimblett <haskell@gimbo.org.uk>, Andy Price <andy@andrewprice.me.uk>";
        homepage = "http://github.com/gimbo/docidx.hs";
        url = "";
        synopsis = "Generate an HTML index of installed Haskell packages and their documentation.";
        description = "docidx is a small tool which creates an HTML index of your\ninstalled Haskell packages, with links to each package's Haddock\ndocs locally and on Hackage.  While \"cabal install\" now creates\nand maintains an index by module, sometimes it's nice to have this\nother view (and the quick links to Hackage).\ndocidx queries your global and user package databases (via\nghc-pkg, via the Cabal package), to build an index of all\ninstalled packages - including version numbers where more than one\nversion is present, package synopses, links to the local Haddock\ndocs, and a link to the package on Hackage.\nPackages are grouped by first letter, and there's an A-Z index at\nthe top of the page, which can be easily extended via a config\nfile to include extra links you think are handy - e.g. to the\nper-module index, to local ghc documentation, to the Haskell\nreport, etc. - whatever you want).";
        buildType = "Simple";
      };
      components = {
        exes = {
          docidx = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.html
              hsPkgs.MissingH
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.tagsoup
              hsPkgs.time
            ];
          };
        };
      };
    }