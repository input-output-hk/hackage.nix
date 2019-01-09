{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4.0";
      identifier = { name = "RNAdraw"; version = "0.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011-2014";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Draw RNA secondary structures";
      description = "We provide a number of ways to draw RNA secondary structures.\nIn particular, the following types of structures can be (more\nor less elegantly) drawn:\n\n* Dot plots for mfe and partition function\n\n* canonical RNA secondary structures without pseudoknots\n\n* non-canonical extended RNA secondary structures\n\n* pseudoknotted secondary structures\n\nFrom top to bottom, the beauty of presentation degrades. Some\nemphasis is put on ASCII-drawings, especially Vienna\ndot-bracket-like notation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.repa)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.QuasiText)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.BiobaseXNA)
          ];
        };
      exes = { "RNAdotplot" = { depends = [ (hsPkgs.cmdargs) ]; }; };
      };
    }