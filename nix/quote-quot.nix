{
  "0.1.0.0" = {
    sha256 = "2b1dcab1d9535e0774da09a3d785b42a8df3176b05b0ad714e9dac856a7c9988";
    revisions = {
      r0 = {
        nix = import ../hackage/quote-quot-0.1.0.0-r0-b57860568cf554dc84c707834f7e640d7ab77f5066b07894d96d76e87d8c789b.nix;
        revNum = 0;
        sha256 = "b57860568cf554dc84c707834f7e640d7ab77f5066b07894d96d76e87d8c789b";
        };
      r1 = {
        nix = import ../hackage/quote-quot-0.1.0.0-r1-6ba19aa4fbb78b58ab10ccab247c7eaa740ba008634f7b9323f25d7a6c3798f3.nix;
        revNum = 1;
        sha256 = "6ba19aa4fbb78b58ab10ccab247c7eaa740ba008634f7b9323f25d7a6c3798f3";
        };
      default = "r1";
      };
    };
  "0.2.0.0" = {
    sha256 = "1c742d631e62067f5c595d9f6f8470ff5e2737809ee8b22397b4bd338030486a";
    revisions = {
      r0 = {
        nix = import ../hackage/quote-quot-0.2.0.0-r0-b9a29d9408ddc4e5802aa1a26d4eeef438703ce93644c1be38bb2edde87240e7.nix;
        revNum = 0;
        sha256 = "b9a29d9408ddc4e5802aa1a26d4eeef438703ce93644c1be38bb2edde87240e7";
        };
      default = "r0";
      };
    };
  "0.2.1.0" = {
    sha256 = "67dc25909c5b9bb373c66a9c9c1721d1e73915bd5518f42d1f97b793f42e4df7";
    revisions = {
      r0 = {
        nix = import ../hackage/quote-quot-0.2.1.0-r0-c72ce07086062a2877e6446f110bad6bbe8c47708d4f4aaa430730ead05f56e7.nix;
        revNum = 0;
        sha256 = "c72ce07086062a2877e6446f110bad6bbe8c47708d4f4aaa430730ead05f56e7";
        };
      default = "r0";
      };
    };
  }