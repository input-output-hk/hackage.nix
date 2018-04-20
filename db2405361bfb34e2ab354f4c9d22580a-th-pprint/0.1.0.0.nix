{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-pprint";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "brian@brianmckenna.org";
        author = "Brian McKenna";
        homepage = "";
        url = "";
        synopsis = "Simplify and render Template Haskell";
        description = "Simplify and render Template Haskell. Functions to dump TH code for easy\ninspection and/or copy-pasting the result into your Haskell files.\n\nFor example:\n\n> putStrLn \$(simplifiedTH =<< makePrisms ''Maybe)";
        buildType = "Simple";
      };
      components = {
        th-pprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.pretty
            hsPkgs.template-haskell
          ];
        };
      };
    }