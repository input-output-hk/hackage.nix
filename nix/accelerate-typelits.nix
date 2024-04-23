{
  "0.1.0.0" = {
    sha256 = "956e31783b2d6929bc33736af96d528ffbcb8d40bad8a6639496e5fd84c8a120";
    revisions = {
      r0 = {
        nix = import ../hackage/accelerate-typelits-0.1.0.0-r0-f0ff3ae2abf7d770f62d3ab00b21f91e89aec83f13c92bdf66165822f3acb384.nix;
        revNum = 0;
        sha256 = "f0ff3ae2abf7d770f62d3ab00b21f91e89aec83f13c92bdf66165822f3acb384";
      };
      r1 = {
        nix = import ../hackage/accelerate-typelits-0.1.0.0-r1-2b32320814618f8ab149f6597101d1a00878e64336e461460126f31235ce12c5.nix;
        revNum = 1;
        sha256 = "2b32320814618f8ab149f6597101d1a00878e64336e461460126f31235ce12c5";
      };
      r2 = {
        nix = import ../hackage/accelerate-typelits-0.1.0.0-r2-943e69f04f202c193de0de06d4c70918c2ca8a2f1fa0f9b7cf6e0d501ff196d5.nix;
        revNum = 2;
        sha256 = "943e69f04f202c193de0de06d4c70918c2ca8a2f1fa0f9b7cf6e0d501ff196d5";
      };
      default = "r2";
    };
  };
}