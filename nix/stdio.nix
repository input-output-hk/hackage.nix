{
  "0.1.0.0" = {
    sha256 = "db1b47b3c139b4d74a36e634ccc016ccf22c25828e5b3221b25d836145f228f9";
    revisions = {
      r0 = {
        nix = import ../hackage/stdio-0.1.0.0-r0-d9c8d529fd3d34b929fc5490f4c69d3ed9a0ff613c95d83976df1885e538ff1f.nix;
        revNum = 0;
        sha256 = "d9c8d529fd3d34b929fc5490f4c69d3ed9a0ff613c95d83976df1885e538ff1f";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "6d04e4b1f09f190ea9a1bed37652efa270bd29b4fc1b981c6589294c5db657eb";
    revisions = {
      r0 = {
        nix = import ../hackage/stdio-0.1.1.0-r0-a57dbe893b0f5cfe1de61e1be85f046ec7a625a18fad3f01ecb62d9116c5e776.nix;
        revNum = 0;
        sha256 = "a57dbe893b0f5cfe1de61e1be85f046ec7a625a18fad3f01ecb62d9116c5e776";
      };
      r1 = {
        nix = import ../hackage/stdio-0.1.1.0-r1-27a1bbe0de03b9e52241a2493c8b11b6ab4cc84d910610c78f83510b2241bcf5.nix;
        revNum = 1;
        sha256 = "27a1bbe0de03b9e52241a2493c8b11b6ab4cc84d910610c78f83510b2241bcf5";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "e108f5c1f320c6731602aa0af19dd5aee6f7293b9d6aa4b84b5874fe33e35e48";
    revisions = {
      r0 = {
        nix = import ../hackage/stdio-0.2.0.0-r0-c2dfaecd7e3e5fe9098c49ab0dab5fe2d6d4ac80bc664d5951428020f710e131.nix;
        revNum = 0;
        sha256 = "c2dfaecd7e3e5fe9098c49ab0dab5fe2d6d4ac80bc664d5951428020f710e131";
      };
      default = "r0";
    };
  };
}