{
  "0.0.0.0" = {
    sha256 = "bd8de884b018f8268fea6d3a0cd8fe50a6c466c800efdbe11cfaee3852e92d8b";
    revisions = {
      r0 = {
        nix = import ../hackage/supply-chain-0.0.0.0-r0-5952e6b9dfb2eb244d7f6d672b1a52beb3bc5fa57c536fbe987ec2a6eac0fd44.nix;
        revNum = 0;
        sha256 = "5952e6b9dfb2eb244d7f6d672b1a52beb3bc5fa57c536fbe987ec2a6eac0fd44";
        };
      r1 = {
        nix = import ../hackage/supply-chain-0.0.0.0-r1-6c866a2e4dd19043e4457b53f81c89610a76931e9a31239b56f525f5cab7e4b8.nix;
        revNum = 1;
        sha256 = "6c866a2e4dd19043e4457b53f81c89610a76931e9a31239b56f525f5cab7e4b8";
        };
      default = "r1";
      };
    };
  "0.0.0.1" = {
    sha256 = "4a7cc9d402ef6c8d8a5af51c15cbfead8be7638efd8699e70283668eff72f03c";
    revisions = {
      r0 = {
        nix = import ../hackage/supply-chain-0.0.0.1-r0-627ac250f3e43cd7a288ce79fbc177a5b129658ddfbdcb45ec3729d94007ff0e.nix;
        revNum = 0;
        sha256 = "627ac250f3e43cd7a288ce79fbc177a5b129658ddfbdcb45ec3729d94007ff0e";
        };
      r1 = {
        nix = import ../hackage/supply-chain-0.0.0.1-r1-bdbfe45da7844315342696f5d6aa945fa8bc589938359d942d6d95ebd02cccda.nix;
        revNum = 1;
        sha256 = "bdbfe45da7844315342696f5d6aa945fa8bc589938359d942d6d95ebd02cccda";
        };
      default = "r1";
      };
    };
  "0.0.1.0" = {
    sha256 = "f94d0ef42ddb01b0885da85c59655477c00e9ce9849a83df57ab749ba6db952b";
    revisions = {
      r0 = {
        nix = import ../hackage/supply-chain-0.0.1.0-r0-5653a7caca2996281208f1490d9f4062bc462b9b4cc9f522182906a4283d2f49.nix;
        revNum = 0;
        sha256 = "5653a7caca2996281208f1490d9f4062bc462b9b4cc9f522182906a4283d2f49";
        };
      default = "r0";
      };
    };
  }