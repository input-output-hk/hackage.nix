{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "estreps"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "Repeats from ESTs";
      description = "rselect - select a random set of sequences from a FASTA file.\nreps    - extract exact k-word repeats based that occur in\nsequences grouped in different clusters.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/estreps>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rselect" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.bio)
            (hsPkgs.bytestring)
            ];
          };
        "reps" = {};
        };
      };
    }