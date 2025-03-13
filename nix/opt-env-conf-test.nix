{
  "0.0.0.0" = {
    sha256 = "747f88540203b919360c7a41fbdd63128f6509965aaef8d3b496eab1670a5df1";
    revisions = {
      r0 = {
        nix = import ../hackage/opt-env-conf-test-0.0.0.0-r0-eee945e63cb43b615f17258e54d249357e34744edbf0d723aa52280b1c7ffb32.nix;
        revNum = 0;
        sha256 = "eee945e63cb43b615f17258e54d249357e34744edbf0d723aa52280b1c7ffb32";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "955cc4264021d937a8718001b009159d36036761f513da9aeb6d6e72dca4ad6a";
    revisions = {
      r0 = {
        nix = import ../hackage/opt-env-conf-test-0.0.0.2-r0-a4f968e4223977f445e84e515e361e0217a25187fe55aee4f1cd5b911637101d.nix;
        revNum = 0;
        sha256 = "a4f968e4223977f445e84e515e361e0217a25187fe55aee4f1cd5b911637101d";
      };
      default = "r0";
    };
  };
}