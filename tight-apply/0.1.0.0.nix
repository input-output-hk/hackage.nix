{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "tight-apply";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Copyright (C) 2015 David Farrell";
        maintainer = "David Farrell <shokku.ra@gmail.com>";
        author = "David Farrell";
        homepage = "";
        url = "";
        synopsis = "Tightly binding infix function application";
        description = "Tightly binding infix function application for Haskell. `apply` has the highest infix precedence of 9, allowing it to be used in places where `\$` would be appropriate if not for its precedence being the lowest precedence of 0.";
        buildType = "Simple";
      };
      components = {
        tight-apply = {
          depends  = [ hsPkgs.base ];
        };
      };
    }