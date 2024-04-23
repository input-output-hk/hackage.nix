{
  "1.1" = {
    sha256 = "8f9fdd8819b17310e6acd3c7104ce71e6682e1728935db097a0304b79f0264d8";
    revisions = {
      r0 = {
        nix = import ../hackage/hsmisc-1.1-r0-24a8119acd0d7b5303140083714cb386536cae042b236dd3b1c02ee73cb2d17b.nix;
        revNum = 0;
        sha256 = "24a8119acd0d7b5303140083714cb386536cae042b236dd3b1c02ee73cb2d17b";
      };
      default = "r0";
    };
  };
  "1.2" = {
    sha256 = "528563ea0af5d4c94b8e225257077c6b7e91b99cfb9f421c8057e1a2485056d8";
    revisions = {
      r0 = {
        nix = import ../hackage/hsmisc-1.2-r0-a59ed4e64977e38c35cc1eb209fe8b29e294ad92e85602fec86909682880a4aa.nix;
        revNum = 0;
        sha256 = "a59ed4e64977e38c35cc1eb209fe8b29e294ad92e85602fec86909682880a4aa";
      };
      default = "r0";
    };
  };
}