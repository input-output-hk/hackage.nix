{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cabal2nix";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/cabal2nix";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions";
      description = "This utility converts Cabal files into Nix build\ninstructions. Run the binary as follows:\n\n> cabal2nix foo.cabal 57ae0330a3d0520bae3d1e447d7d5c88de9ecbf0de133f31f2cc42961c81d47f\n\nThe first argument is the path to the cabal file\nto be converted, the second argument is the\nSHA256 hash of the corresponding source tarball.\n\nThe Nix build instructions will be written to\nstdout.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }