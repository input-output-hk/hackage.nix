{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tds"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2018 Travis Athougies";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "https://github.com/tathougies/beam-tds#readme";
      url = "";
      synopsis = "Pure Haskell TDS protocol implementation. Mainly for beam-mssql and beam-sybase";
      description = "This is a work in progress! Please report bugs on github\nLow-level Haskell TDS implementation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.tardis)
          (hsPkgs.unix)
          (hsPkgs.streaming)
          (hsPkgs.streaming-attoparsec)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-binary)
          (hsPkgs.hostname)
          (hsPkgs.vector)
          ];
        };
      exes = { "test" = { depends = [ (hsPkgs.base) (hsPkgs.tds) ]; }; };
      };
    }