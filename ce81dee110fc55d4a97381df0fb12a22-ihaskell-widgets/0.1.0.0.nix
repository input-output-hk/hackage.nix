{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ihaskell-widgets";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Sumit Sahrawat <sumit.sahrawat.apm13@iitbhu.ac.in>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
        author = "Sumit Sahrawat";
        homepage = "http://www.github.com/gibiansky/IHaskell";
        url = "";
        synopsis = "IPython standard widgets for IHaskell.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ihaskell-widgets" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ipython-kernel
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.nats
            hsPkgs.vinyl
            hsPkgs.vector
            hsPkgs.singletons
            hsPkgs.scientific
            hsPkgs.unix
            hsPkgs.ihaskell
          ];
        };
      };
    }