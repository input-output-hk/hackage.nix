{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-shell";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Lars Schulna";
      maintainer = "kartoffelbrei.mit.muskatnuss@gmail.com";
      author = "kartoffelbrei";
      homepage = "";
      url = "";
      synopsis = "Create proper Pipes from System.Process";
      description = "This package provides functions to build proper Pipes from Unix shell commands like /tr/, /ls/ or /echo/ in a concise way.\n\nBuild with /cabal configure --enable-tests/ to build the little hspec test.";
      buildType = "Simple";
    };
    components = {
      "pipes-shell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.process)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.async)
          (hsPkgs.stm-chans)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.process)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.stm-chans)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }