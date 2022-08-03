{
  "0.3" = {
    sha256 = "e0b297b3229dc8b27046414bdf13b86d96f1ff948b4bf77d40a51afb23d07387";
    revisions = {
      r0 = {
        nix = import ../hackage/openpgp-Crypto-0.3-r0-074af94a9ce88e0c46aab14963845fdf647573da801542785f28e95f46a24dff.nix;
        revNum = 0;
        sha256 = "074af94a9ce88e0c46aab14963845fdf647573da801542785f28e95f46a24dff";
        };
      r1 = {
        nix = import ../hackage/openpgp-Crypto-0.3-r1-2759d5c9d52263357513d915735d5fb3600708a964cb14a6c9ac53f629215fd7.nix;
        revNum = 1;
        sha256 = "2759d5c9d52263357513d915735d5fb3600708a964cb14a6c9ac53f629215fd7";
        };
      default = "r1";
      };
    };
  "0.5" = {
    sha256 = "f980dff35b9adaed3022d883f975d16836d6a51ae4f97ca7d047a2339efb4d3f";
    revisions = {
      r0 = {
        nix = import ../hackage/openpgp-Crypto-0.5-r0-02957870c30f0779c14d93a13c768f2ce7c3fa1cbb7e83c0d9ad9afdfd87a8e7.nix;
        revNum = 0;
        sha256 = "02957870c30f0779c14d93a13c768f2ce7c3fa1cbb7e83c0d9ad9afdfd87a8e7";
        };
      default = "r0";
      };
    };
  "0.6" = {
    sha256 = "b57f6208754e2cbd6b2b8eb09ca4c9a61b3972bc110d84c49ba08d7c8ba58304";
    revisions = {
      r0 = {
        nix = import ../hackage/openpgp-Crypto-0.6-r0-5d9d233460a9e1b9d3175a665cc7b4bc65cc07e4d4733542c73e5860531d6cde.nix;
        revNum = 0;
        sha256 = "5d9d233460a9e1b9d3175a665cc7b4bc65cc07e4d4733542c73e5860531d6cde";
        };
      default = "r0";
      };
    };
  }