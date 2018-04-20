{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "truthful";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Copyright (C) 2015 David Farrell";
        maintainer = "David Farrell <shokku.ra@gmail.com>";
        author = "David Farrell";
        homepage = "";
        url = "";
        synopsis = "Typeclass for truthfulness of values";
        description = "Typeclass for truthfulness or completeness of types such as Bool, Maybe, and Either. Similar to `null` from `Foldable` but for all kinds `*`.";
        buildType = "Simple";
      };
      components = {
        truthful = {
          depends  = [ hsPkgs.base ];
        };
      };
    }