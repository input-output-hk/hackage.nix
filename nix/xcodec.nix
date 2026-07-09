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
}