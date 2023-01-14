{
  "0.0.1.0" = {
    sha256 = "87c7b780e71ac8e63e36be03e644319d7f9b9584804fafa3a17b7f5f26f547d8";
    revisions = {
      r0 = {
        nix = import ../hackage/prairie-0.0.1.0-r0-d710a4bd9adb70121d083a6e73da4ee3097cb12ef311669a78a7a4add467b7f6.nix;
        revNum = 0;
        sha256 = "d710a4bd9adb70121d083a6e73da4ee3097cb12ef311669a78a7a4add467b7f6";
        };
      r1 = {
        nix = import ../hackage/prairie-0.0.1.0-r1-ff03999e24532c78f33af398f1857beaa9eabb19d0c6bb96e9584bd2b0ac4715.nix;
        revNum = 1;
        sha256 = "ff03999e24532c78f33af398f1857beaa9eabb19d0c6bb96e9584bd2b0ac4715";
        };
      r2 = {
        nix = import ../hackage/prairie-0.0.1.0-r2-386999a91d78760d989ff7efb724fb6722b9a78b295b8c372f074d6ded38e1fa.nix;
        revNum = 2;
        sha256 = "386999a91d78760d989ff7efb724fb6722b9a78b295b8c372f074d6ded38e1fa";
        };
      default = "r2";
      };
    };
  "0.0.1.1" = {
    sha256 = "446984e8991e0894f10e7447f1ad45a1f8d05a465fdf40bcc63811b7ecb0be50";
    revisions = {
      r0 = {
        nix = import ../hackage/prairie-0.0.1.1-r0-12c6278ecbcaee3d292dbbffc8d514c43e1c5363f0986305f1fed4459e92526e.nix;
        revNum = 0;
        sha256 = "12c6278ecbcaee3d292dbbffc8d514c43e1c5363f0986305f1fed4459e92526e";
        };
      default = "r0";
      };
    };
  "0.0.2.0" = {
    sha256 = "c3e1b35de7e752272ea40a3ca42a5dffdc6c010b8d5cfdd10f7b435d884234fd";
    revisions = {
      r0 = {
        nix = import ../hackage/prairie-0.0.2.0-r0-4aa6bf9acd5c516ab9c1d372a36cf6c8177d83f8b1d6647e447c09c90023f6a2.nix;
        revNum = 0;
        sha256 = "4aa6bf9acd5c516ab9c1d372a36cf6c8177d83f8b1d6647e447c09c90023f6a2";
        };
      default = "r0";
      };
    };
  }