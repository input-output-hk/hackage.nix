{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hails-bin";
        version = "0.1.1.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "Dynamic launcher of Hails applications";
      description = "Executable for deploying Hails (see the hails Hackage package)\napplications.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hails" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hails)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ghc-paths)
            (hsPkgs.iterIO)
            (hsPkgs.iterio-server)
            (hsPkgs.mongoDB)
            (hsPkgs.bson)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }