{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-properties = true; test-hlint = true; no-donna = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ed25519"; version = "0.0.4.0"; };
      license = "MIT";
      copyright = "Copyright (c) Austin Seipp 2013-2015";
      maintainer = "Austin Seipp <aseipp@pobox.com>";
      author = "Austin Seipp";
      homepage = "http://thoughtpolice.github.com/hs-ed25519";
      url = "";
      synopsis = "Ed25519 cryptographic signatures";
      description = "This package provides a simple, fast, self-contained copy of the\nEd25519 public-key signature system with a clean interface. It also\nincludes support for detached signatures, and thorough documentation\non the design and implementation, including usage guidelines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.ghc-prim) (hsPkgs.base) (hsPkgs.bytestring) ];
        };
      tests = {
        "properties" = {
          depends = (pkgs.lib).optionals (!(!flags.test-properties)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.ed25519)
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            ];
          };
        };
      benchmarks = {
        "bench1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.ed25519)
            ];
          };
        };
      };
    }