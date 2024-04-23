{
  "0.1.0.0" = {
    sha256 = "b32a81e0a9776bf33ccc2d302ae468fbb6a07f4e3e72f6ae88a524289ed29ba8";
    revisions = {
      r0 = {
        nix = import ../hackage/rec-smallarray-0.1.0.0-r0-41032cc3fd0be87a5f5ebd8a1b66fd1ca6b3aa65df610bc847b951aee035d90c.nix;
        revNum = 0;
        sha256 = "41032cc3fd0be87a5f5ebd8a1b66fd1ca6b3aa65df610bc847b951aee035d90c";
      };
      r1 = {
        nix = import ../hackage/rec-smallarray-0.1.0.0-r1-08cb94b358f0b85da26fbdb7f0556575feef94fcda9befe0a812b6f251c607f0.nix;
        revNum = 1;
        sha256 = "08cb94b358f0b85da26fbdb7f0556575feef94fcda9befe0a812b6f251c607f0";
      };
      r2 = {
        nix = import ../hackage/rec-smallarray-0.1.0.0-r2-d79627e8790f2d5a19192e5df790a292237929b9572cecbfbcf3648a77b2e14c.nix;
        revNum = 2;
        sha256 = "d79627e8790f2d5a19192e5df790a292237929b9572cecbfbcf3648a77b2e14c";
      };
      default = "r2";
    };
  };
}