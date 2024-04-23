{
  "0.1.0.0" = {
    sha256 = "c3fcc88246cfd2e2bc02b25282bdcd5eee0418dfff6f676bd299d1787c56d8e5";
    revisions = {
      r0 = {
        nix = import ../hackage/bindings-codec2-0.1.0.0-r0-0a230238c169c3fbeba9ec4d6d1899f21c48741ea78fb43dae5e760165a92ead.nix;
        revNum = 0;
        sha256 = "0a230238c169c3fbeba9ec4d6d1899f21c48741ea78fb43dae5e760165a92ead";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "d6363eaa386fa3dd172d22826bd710db35a89e9640f46c9a822062275b3aeb56";
    revisions = {
      r0 = {
        nix = import ../hackage/bindings-codec2-0.1.1.0-r0-dc7bdc7f67288e33a5a3c3c392a58e2e85a71db67293b2e53c5fdb5118efc52b.nix;
        revNum = 0;
        sha256 = "dc7bdc7f67288e33a5a3c3c392a58e2e85a71db67293b2e53c5fdb5118efc52b";
      };
      r1 = {
        nix = import ../hackage/bindings-codec2-0.1.1.0-r1-48e69a5b497247c96ab7a6ed3ff818bef596c712249819e63a84c4667ef5d0b1.nix;
        revNum = 1;
        sha256 = "48e69a5b497247c96ab7a6ed3ff818bef596c712249819e63a84c4667ef5d0b1";
      };
      default = "r1";
    };
  };
}