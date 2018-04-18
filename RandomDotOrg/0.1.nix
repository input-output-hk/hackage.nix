{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "RandomDotOrg";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "mad.one@gmail.com";
        author = "Austin Seipp";
        homepage = "";
        url = "";
        synopsis = "Interface to random numbers on random.org";
        description = "Using this package you can generate random numbers\n(based on the atmosphere, not a PRNG) via the random.org website";
        buildType = "Simple";
      };
      components = {
        RandomDotOrg = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP-Simple
            hsPkgs.network
          ];
        };
      };
    }