{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      transformers = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "control-monad-free";
          version = "0.5";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Luke Palmer, Pepe Iborra";
        homepage = "http://github.com/pepeiborra/control-monad-free";
        url = "";
        synopsis = "Free monads and monad transformers";
        description = "This package provides datatypes to construct Free monads,\nFree monad transformers, and useful instances. In addition it\nprovides the constructs to avoid quadratic complexity of left\nassociative bind, as explained in:\n\n* Janis Voigtlander, /Asymptotic Improvement of Computations over Free Monads, MPC'08/";
        buildType = "Simple";
      };
      components = {
        "control-monad-free" = {
          depends  = [
            hsPkgs.base
          ] ++ (if _flags.transformers
            then [ hsPkgs.transformers ]
            else [ hsPkgs.mtl ]);
        };
      };
    }