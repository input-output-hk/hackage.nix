{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-shell";
          version = "0.1.3";
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
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.pipes
            hsPkgs.pipes-bytestring
            hsPkgs.pipes-safe
            hsPkgs.process
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.text
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-safe
              hsPkgs.process
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.text
            ];
          };
        };
      };
    }