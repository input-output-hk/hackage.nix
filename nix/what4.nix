{
  "1.0" = {
    sha256 = "1ccdb3bfebf596fc40ec5c2a0973c8a8b47e61c32d481b0d96591ffa9fc0de7b";
    revisions = {
      r0 = {
        nix = import ../hackage/what4-1.0-r0-fa7f10aeb595829fe228e27c10cb5ed0affdd99432b2b8332d4f31eb7b6ff4d5.nix;
        revNum = 0;
        sha256 = "fa7f10aeb595829fe228e27c10cb5ed0affdd99432b2b8332d4f31eb7b6ff4d5";
        };
      r1 = {
        nix = import ../hackage/what4-1.0-r1-ae5e7363ba9edf6a179d63fa4bea20a90a084fc86c5692b65c633d6bb7454b11.nix;
        revNum = 1;
        sha256 = "ae5e7363ba9edf6a179d63fa4bea20a90a084fc86c5692b65c633d6bb7454b11";
        };
      default = "r1";
      };
    };
  "1.1" = {
    sha256 = "782259e883c83b78797df3a09d99e959d66be1e4a1aef89e49edef62d080a698";
    revisions = {
      r0 = {
        nix = import ../hackage/what4-1.1-r0-f7b17576cdeb20f0e36fb8547c1578ad38dcbe5678f30dfee947e05e2735ad3a.nix;
        revNum = 0;
        sha256 = "f7b17576cdeb20f0e36fb8547c1578ad38dcbe5678f30dfee947e05e2735ad3a";
        };
      default = "r0";
      };
    };
  "1.2" = {
    sha256 = "b00c372f8dce63f9d6e0914e849a9118eda2d32c622cea979bf490f50531a68c";
    revisions = {
      r0 = {
        nix = import ../hackage/what4-1.2-r0-a736fb2933f00c0ad743c830f3af2d521734b7db6e353b7897bd4fdc78b1f4a1.nix;
        revNum = 0;
        sha256 = "a736fb2933f00c0ad743c830f3af2d521734b7db6e353b7897bd4fdc78b1f4a1";
        };
      default = "r0";
      };
    };
  "1.2.1" = {
    sha256 = "c3e93bd9835a07b357846620b4786f04e0a63406d5cd502a281c7efc756c7b31";
    revisions = {
      r0 = {
        nix = import ../hackage/what4-1.2.1-r0-25825c81d3862d82a53fe3ddb6d6aa9e53c536dc79946d1d841d532943539d67.nix;
        revNum = 0;
        sha256 = "25825c81d3862d82a53fe3ddb6d6aa9e53c536dc79946d1d841d532943539d67";
        };
      default = "r0";
      };
    };
  "1.3" = {
    sha256 = "789efc84d09eb3afd9707108e0a3fa78d0b43bfd36b80aa0aacfef41cad4e40e";
    revisions = {
      r0 = {
        nix = import ../hackage/what4-1.3-r0-cc0b7a8ca310f1bfa41d5a8cee6c53529707955c7a70000f016819e04004f30f.nix;
        revNum = 0;
        sha256 = "cc0b7a8ca310f1bfa41d5a8cee6c53529707955c7a70000f016819e04004f30f";
        };
      default = "r0";
      };
    };
  "1.4" = {
    sha256 = "2b113377419ff425b4a63b33184acc1bd40b853b42c3d5a2416f74625970bbb2";
    revisions = {
      r0 = {
        nix = import ../hackage/what4-1.4-r0-ec49ceb774507cf97bb9ff730665f93523e21e7f4e0c4b781e8d94adca8ac6d8.nix;
        revNum = 0;
        sha256 = "ec49ceb774507cf97bb9ff730665f93523e21e7f4e0c4b781e8d94adca8ac6d8";
        };
      default = "r0";
      };
    };
  }