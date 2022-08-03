{
  "0.0.1.0" = {
    sha256 = "7399ed6b3387c04f6431598faa9af8da15203d8e9977b238869686b5dea43594";
    revisions = {
      r0 = {
        nix = import ../hackage/aws-transcribe-ws-0.0.1.0-r0-a6842888a64d51638a5c83c6816d5a8d909ac830217ed1f5a1c5eb75a6e5db5a.nix;
        revNum = 0;
        sha256 = "a6842888a64d51638a5c83c6816d5a8d909ac830217ed1f5a1c5eb75a6e5db5a";
        };
      r1 = {
        nix = import ../hackage/aws-transcribe-ws-0.0.1.0-r1-4640b361a2125187b23b39213ca938d79e4bc69515073f2fc217612e862f560c.nix;
        revNum = 1;
        sha256 = "4640b361a2125187b23b39213ca938d79e4bc69515073f2fc217612e862f560c";
        };
      default = "r1";
      };
    };
  }