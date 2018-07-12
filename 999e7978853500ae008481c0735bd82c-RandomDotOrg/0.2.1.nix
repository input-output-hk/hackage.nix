{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "RandomDotOrg";
          version = "0.2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "mad.one@gmail.com";
        author = "Austin Seipp";
        homepage = "";
        url = "";
        synopsis = "Interface to random.org";
        description = "Using this package you can generate random numbers,\nstrings and randomize a sequence of numbers through\nthe random.org website, which provides randomness\nthrough atmospheric noise rather than a PRNG.";
        buildType = "Simple";
      };
      components = {
        "RandomDotOrg" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP-Simple
            hsPkgs.network
          ];
        };
      };
    }