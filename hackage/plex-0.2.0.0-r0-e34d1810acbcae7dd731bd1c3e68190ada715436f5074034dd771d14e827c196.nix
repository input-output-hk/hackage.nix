{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { buildexe = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "plex";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2018 phlummox";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/hs-plex#readme";
      url = "";
      synopsis = "run a subprocess, combining stdout and stderr";
      description = "Execute a command, redirect stderr into stdout, and return\nthe combined result (optionally, with a timeout).\nIrritatingly difficult to do using the \"process\" library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "try-plex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
          ] ++ pkgs.lib.optionals (flags.buildexe) [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.plex)
            (hsPkgs.deepseq)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "plex-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.base)
            (hsPkgs.plex)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }