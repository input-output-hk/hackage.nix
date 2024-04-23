{
  "0.0.1" = {
    sha256 = "848e047cfec5781a28f472e9cd27d016362211d88dd6adb4f826c37d29d8bba6";
    revisions = {
      r0 = {
        nix = import ../hackage/jpeg-0.0.1-r0-32550d61d89caf4a2867f9348aa2faf7d3be6d3e247047ce69906c97595521df.nix;
        revNum = 0;
        sha256 = "32550d61d89caf4a2867f9348aa2faf7d3be6d3e247047ce69906c97595521df";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "1d27b81dc995ddbd579e4a55dbc6795fa25014afff13c57df4eefe20f255cec2";
    revisions = {
      r0 = {
        nix = import ../hackage/jpeg-0.0.1.1-r0-adb50993c52b3a20858244972dab605ebaa697b972f2a53f5c62771e1e5b7d82.nix;
        revNum = 0;
        sha256 = "adb50993c52b3a20858244972dab605ebaa697b972f2a53f5c62771e1e5b7d82";
      };
      default = "r0";
    };
  };
}