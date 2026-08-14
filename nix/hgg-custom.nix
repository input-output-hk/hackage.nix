{
  "0.1.0.0" = {
    sha256 = "43360d8221157b0cabb4e957f828d670e9c8b0c0309066b4fd6a2a1eb1b37f24";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-custom-0.1.0.0-r0-375ead3d3cad13cc7aca23404adc5a5af76cc8f82eb90ff4c0fbee70035d14f6.nix;
        revNum = 0;
        sha256 = "375ead3d3cad13cc7aca23404adc5a5af76cc8f82eb90ff4c0fbee70035d14f6";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "5d02816abf5d44ba5543985d2d5b13ac888b632d5b558f799d77d8970cf9ef9b";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-custom-0.2.0.0-r0-4cedd447079f3452d3c41c22a0e41dc52d0fa7236a70894e9727e561f986f168.nix;
        revNum = 0;
        sha256 = "4cedd447079f3452d3c41c22a0e41dc52d0fa7236a70894e9727e561f986f168";
      };
      default = "r0";
    };
  };
}