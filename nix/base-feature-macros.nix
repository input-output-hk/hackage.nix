{
  "0.1" = {
    sha256 = "be1ba0e207be3558f5b061785dd363fd63613034e00488b022be7655561d39ab";
    revisions = {
      r0 = {
        nix = import ../hackage/base-feature-macros-0.1-r0-0caa11c2380414556663ebf85a284549a75f3306eed071ca9d4833b50fc46558.nix;
        revNum = 0;
        sha256 = "0caa11c2380414556663ebf85a284549a75f3306eed071ca9d4833b50fc46558";
        };
      r1 = {
        nix = import ../hackage/base-feature-macros-0.1-r1-d92172580179ae9338cb58504d1b05c058ce0d593ef4f67a88dbef842f693ae6.nix;
        revNum = 1;
        sha256 = "d92172580179ae9338cb58504d1b05c058ce0d593ef4f67a88dbef842f693ae6";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "b7bea73aba406db1c9349e5967143517c85d6cd6efd4c87777396229ab048aec";
    revisions = {
      r0 = {
        nix = import ../hackage/base-feature-macros-0.1.0.1-r0-40afd56bea207f8abf15143be8993138f9af81426e6188eb5c7e13b7f7520d1d.nix;
        revNum = 0;
        sha256 = "40afd56bea207f8abf15143be8993138f9af81426e6188eb5c7e13b7f7520d1d";
        };
      default = "r0";
      };
    };
  }