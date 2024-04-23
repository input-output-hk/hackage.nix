{
  "0.1.0.0" = {
    sha256 = "6f638b9ca0698edaa6d3a4e11ccdd2447299b9ba89a1aef494d9694a6ceb4ac5";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-mirror-0.1.0.0-r0-aec4de75a16bcc2305d3a90ad6812348608bddd036fe6982ab4d1b9cb8da7539.nix;
        revNum = 0;
        sha256 = "aec4de75a16bcc2305d3a90ad6812348608bddd036fe6982ab4d1b9cb8da7539";
      };
      r1 = {
        nix = import ../hackage/hackage-mirror-0.1.0.0-r1-848ea26073e706a9303ec1baf811a74b65859ae649731a3b799b4fb8c558c1bc.nix;
        revNum = 1;
        sha256 = "848ea26073e706a9303ec1baf811a74b65859ae649731a3b799b4fb8c558c1bc";
      };
      r2 = {
        nix = import ../hackage/hackage-mirror-0.1.0.0-r2-d785ec52af5065a15f693ef3f171b7a8508b75d8558ac1bfd68e726c8dfbe90d.nix;
        revNum = 2;
        sha256 = "d785ec52af5065a15f693ef3f171b7a8508b75d8558ac1bfd68e726c8dfbe90d";
      };
      default = "r2";
    };
  };
  "0.1.1.1" = {
    sha256 = "d710bae7061d831ae6c018691011344dd8cf93b08b950944aed7c119fbee8eae";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-mirror-0.1.1.1-r0-b53f33c150c2cb1d7bb1736e3c9c70de988963e3e3e091984d46425e3fb26c4c.nix;
        revNum = 0;
        sha256 = "b53f33c150c2cb1d7bb1736e3c9c70de988963e3e3e091984d46425e3fb26c4c";
      };
      default = "r0";
    };
  };
}