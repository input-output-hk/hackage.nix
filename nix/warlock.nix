{
  "0.1.0.0" = {
    sha256 = "70d67be16f992e6561940b06c3618319fa0eb97c9330889409ac4b942067a8ff";
    revisions = {
      r0 = {
        nix = import ../hackage/warlock-0.1.0.0-r0-f3e38e452af9d36a29825cad590f0d9280c82c71b7231cd1ca0e49b600a66f1b.nix;
        revNum = 0;
        sha256 = "f3e38e452af9d36a29825cad590f0d9280c82c71b7231cd1ca0e49b600a66f1b";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "70fa9de21137d842fe9658244854336e4483884cd7c4ee1fee0dd8c7da3a2f99";
    revisions = {
      r0 = {
        nix = import ../hackage/warlock-0.1.0.1-r0-3b05309713cc4e27ecc895248ada67f9476c122d9a2def439ed8de829b64bf06.nix;
        revNum = 0;
        sha256 = "3b05309713cc4e27ecc895248ada67f9476c122d9a2def439ed8de829b64bf06";
      };
      default = "r0";
    };
  };
}