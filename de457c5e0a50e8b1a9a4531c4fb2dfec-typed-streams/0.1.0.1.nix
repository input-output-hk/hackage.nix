{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "typed-streams";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Clinton Mead (2017)";
        maintainer = "clintonmead@gmail.com";
        author = "Clinton Mead";
        homepage = "";
        url = "";
        synopsis = "A stream based replacement for lists";
        description = "This is an (incomplete) stream based replacement for lists, but already includes significant\nfunctionality and can be faster than using lists in certain cases.\n\nSee \"Data.Stream.Typed\" for the most detailed documentation,\nand \"Data.Stream\" for a simpler interface.";
        buildType = "Simple";
      };
      components = {
        "typed-streams" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.make-monofoldable-foldable
            hsPkgs.mono-traversable
            hsPkgs.generic-enum
            hsPkgs.ghc-typelits-knownnat
            hsPkgs.vector
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.make-monofoldable-foldable
              hsPkgs.mono-traversable
              hsPkgs.generic-enum
              hsPkgs.ghc-typelits-knownnat
              hsPkgs.vector
              hsPkgs.criterion
            ];
          };
        };
      };
    }