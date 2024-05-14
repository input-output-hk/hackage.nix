{
  "2.0" = {
    sha256 = "96800683adce2bb8f54b101dab020c09bb43b33a0cad53e889121452dc59ff22";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ec2-instance-connect-2.0-r0-0459d3d05047cd5daf4176af66cb83d766d04e484c3e7adec13b7f8d1c2d5b1e.nix;
        revNum = 0;
        sha256 = "0459d3d05047cd5daf4176af66cb83d766d04e484c3e7adec13b7f8d1c2d5b1e";
      };
      r1 = {
        nix = import ../hackage/amazonka-ec2-instance-connect-2.0-r1-c8b1f6200aef50b4417b84dad49a6a7d1c01c71a12b96c31e71824612e0cfedc.nix;
        revNum = 1;
        sha256 = "c8b1f6200aef50b4417b84dad49a6a7d1c01c71a12b96c31e71824612e0cfedc";
      };
      default = "r1";
    };
  };
}