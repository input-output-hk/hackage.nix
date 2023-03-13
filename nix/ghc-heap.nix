{
  "9.0.1" = {
    sha256 = "b6f9ec1b25db0ff95a859c1633b7b6d1a00cda47bd7a98204d639576e5419f07";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-heap-9.0.1-r0-519c0c21b8b75923da56e803d48ed223975550be555faa328952aab492b1f522.nix;
        revNum = 0;
        sha256 = "519c0c21b8b75923da56e803d48ed223975550be555faa328952aab492b1f522";
        };
      default = "r0";
      };
    };
  "9.2.1" = {
    sha256 = "696bcc5c2865bea4c80e73a144cd52a6439026f42cf49e8d20bfec7445b8a781";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-heap-9.2.1-r0-3dd9243cf5e16a8db70851acc59795e120b2f404f5639fea2276876f79205db2.nix;
        revNum = 0;
        sha256 = "3dd9243cf5e16a8db70851acc59795e120b2f404f5639fea2276876f79205db2";
        };
      r1 = {
        nix = import ../hackage/ghc-heap-9.2.1-r1-26fa2972b4137447891f8c8aca85100c9328452f7f817ae96912cc6d129b7c86.nix;
        revNum = 1;
        sha256 = "26fa2972b4137447891f8c8aca85100c9328452f7f817ae96912cc6d129b7c86";
        };
      default = "r1";
      };
    };
  "9.2.2" = {
    sha256 = "6e28f39dab0077d368190d0bc1adfb5c4a0e0b747d874a072c71c1b1c89ea226";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-heap-9.2.2-r0-03b9b1db02c02db279a9cdbf9589966a869a5537103199bc507bcb5169999117.nix;
        revNum = 0;
        sha256 = "03b9b1db02c02db279a9cdbf9589966a869a5537103199bc507bcb5169999117";
        };
      default = "r0";
      };
    };
  "9.4.1" = {
    sha256 = "c257c4de9e6409da937262d49da6534a8721e3f4c3e54d77ecfc9ebd131adf7d";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-heap-9.4.1-r0-4881b6c6262858a64306a22d20edbb498c9bbac6752e3d45cec19efc6614218c.nix;
        revNum = 0;
        sha256 = "4881b6c6262858a64306a22d20edbb498c9bbac6752e3d45cec19efc6614218c";
        };
      default = "r0";
      };
    };
  "9.6.1" = {
    sha256 = "a3f0f8add648413cf1500c9953a832380ba0eeee089fb76bc9441bdc1a854bcf";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-heap-9.6.1-r0-bca1c144f7a6708b7df0ef01360861b2da50ddbaf366d28cf4ec1f1f21ffade5.nix;
        revNum = 0;
        sha256 = "bca1c144f7a6708b7df0ef01360861b2da50ddbaf366d28cf4ec1f1f21ffade5";
        };
      default = "r0";
      };
    };
  }