{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sundown";
          version = "0.4.1.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Francesco Mazzoli (f@mazzo.li)";
        author = "Francesco Mazzoli (f@mazzo.li)";
        homepage = "https://github.com/bitonic/sundown";
        url = "";
        synopsis = "Bindings to the sundown markdown library";
        description = "Bindings to the github fork of sundown, a nice C markdown library:\n<https://github.com/tanoku/sundown>";
        buildType = "Simple";
      };
      components = {
        sundown = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }