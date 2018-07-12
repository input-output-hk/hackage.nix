{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "electrum-mnemonic";
          version = "0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "2014 Joey Hess\n2011 thomasv";
        maintainer = "Joey Hess <joey@kitenet.net>";
        author = "Joey Hess";
        homepage = "";
        url = "";
        synopsis = "easy to remember mnemonic for a high-entropy value";
        description = "A compatible re-implementation of the mnemonic used by the\nElectrum bitcoin wallet.\n\nGenerates an easy to remember mnemonic phrase from a high entropy value\nsuch as a private key. Three words are sufficient to encode 128 bits\nof data.\n\nThe word list is tuned to produce memorable and often poetic\nphrases, for example:\n- dragon image everywhere teeth cage universe\n- respect born enemy affection sometimes human\n- certain return beauty baby great art";
        buildType = "Simple";
      };
      components = {
        "electrum-mnemonic" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }