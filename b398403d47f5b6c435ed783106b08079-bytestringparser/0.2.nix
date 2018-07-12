{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      applicative-in-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestringparser";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "";
        url = "";
        synopsis = "Combinator parsing with Data.ByteString.Lazy";
        description = "";
        buildType = "Custom";
      };
      components = {
        "bytestringparser" = {
          depends  = (if _flags.split-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
            ]) ++ [ hsPkgs.base ];
        };
      };
    }