{
  "1.0.0.0" = {
    sha256 = "287c20d3528746a3134127718cb427a507ffef1eb86499686e2d29c352fe1c33";
    revisions = {
      r0 = {
        nix = import ../hackage/xcodec-1.0.0.0-r0-3b98f2617be940a2985906f17b74ea114b7495aa24448319a3bc519ee70e8795.nix;
        revNum = 0;
        sha256 = "3b98f2617be940a2985906f17b74ea114b7495aa24448319a3bc519ee70e8795";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "49164f5087f386fb0ac216f2e922e75b9d33ffb12baeb9840322528167cc738f";
    revisions = {
      r0 = {
        nix = import ../hackage/xcodec-1.1.0.0-r0-750ca27746e0a097e881c91db3b31d277ef6fc6bb05a8b38c08d439bdfc10be1.nix;
        revNum = 0;
        sha256 = "750ca27746e0a097e881c91db3b31d277ef6fc6bb05a8b38c08d439bdfc10be1";
      };
      default = "r0";
    };
  };
  "2.0.0.0" = {
    sha256 = "737f6869c7d0ca7c21901988a8f7392a2c6d687b39a2de4126f4447b463d5f88";
    revisions = {
      r0 = {
        nix = import ../hackage/xcodec-2.0.0.0-r0-755d6abb962747bf4f5fae1c13297fb88184d153d34f2c512e222cc03b159e24.nix;
        revNum = 0;
        sha256 = "755d6abb962747bf4f5fae1c13297fb88184d153d34f2c512e222cc03b159e24";
      };
      r1 = {
        nix = import ../hackage/xcodec-2.0.0.0-r1-c9832b3cc4a34df3ff34ccd28e1b1ddd6bb7a757f53dba7085f2f5b29e2e6206.nix;
        revNum = 1;
        sha256 = "c9832b3cc4a34df3ff34ccd28e1b1ddd6bb7a757f53dba7085f2f5b29e2e6206";
      };
      default = "r1";
    };
  };
}