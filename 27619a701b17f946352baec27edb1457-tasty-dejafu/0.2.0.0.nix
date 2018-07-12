{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-dejafu";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mike@barrucadu.co.uk";
        author = "Michael Walker";
        homepage = "https://github.com/barrucadu/dejafu";
        url = "";
        synopsis = "Deja Fu support for the Tasty test framework.";
        description = "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>\nlibrary for concurrency testing and\n<https://hackage.haskell.org/package/tasty tasty>. This lets you\neasily incorporate concurrency testing into your existing test\nsuites.\n\nSee the <https://github.com/barrucadu/dejafu README> for more\ndetails.";
        buildType = "Simple";
      };
      components = {
        "tasty-dejafu" = {
          depends  = [
            hsPkgs.base
            hsPkgs.dejafu
            hsPkgs.tasty
          ];
        };
      };
    }