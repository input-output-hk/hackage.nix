{
  "0.17.0" = {
    sha256 = "69f3d0723a2fca930b3b2e206f18d1b76baa2ae5ddbdfc97e6c81d5cc2babed5";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-pg-0.17.0-r0-e8656b5ed929a342db890ece17a1ac788b55bd3cc29e7b7fa285a314218238b1.nix;
        revNum = 0;
        sha256 = "e8656b5ed929a342db890ece17a1ac788b55bd3cc29e7b7fa285a314218238b1";
      };
      default = "r0";
    };
  };
  "0.17.1" = {
    sha256 = "55d4f6c1f6f0d9eafa3dfebadef7843f2eef22885ea6a151914325eda6053e61";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-pg-0.17.1-r0-11a2a136398d3d9f2d0e34add61942bf15f2121801a682ca98f10faa2ae8b318.nix;
        revNum = 0;
        sha256 = "11a2a136398d3d9f2d0e34add61942bf15f2121801a682ca98f10faa2ae8b318";
      };
      default = "r0";
    };
  };
}