{
  "1.0.0.0" = {
    sha256 = "6551d60c61c90509592e32ee021a927539d5f391cdfd94b76ca51add05c60a24";
    revisions = {
      r0 = {
        nix = import ../hackage/password-types-1.0.0.0-r0-989fee5e84939c26a1063758f276459756ed026dccb360b7b48cddb9a940e6ee.nix;
        revNum = 0;
        sha256 = "989fee5e84939c26a1063758f276459756ed026dccb360b7b48cddb9a940e6ee";
      };
      r1 = {
        nix = import ../hackage/password-types-1.0.0.0-r1-7eff4e854980d32db96b7ebbe906abefef310648e2aec01aac5d900ca77681db.nix;
        revNum = 1;
        sha256 = "7eff4e854980d32db96b7ebbe906abefef310648e2aec01aac5d900ca77681db";
      };
      r2 = {
        nix = import ../hackage/password-types-1.0.0.0-r2-20f0b1c5f4213b9d1be248c9f049d1ad9de7710e3eb6dbd4580716d663ee5ad8.nix;
        revNum = 2;
        sha256 = "20f0b1c5f4213b9d1be248c9f049d1ad9de7710e3eb6dbd4580716d663ee5ad8";
      };
      r3 = {
        nix = import ../hackage/password-types-1.0.0.0-r3-f91e6e7922f02a064dd8c9cb8c35eef2574823d4296f6055c3252dfd5395cd44.nix;
        revNum = 3;
        sha256 = "f91e6e7922f02a064dd8c9cb8c35eef2574823d4296f6055c3252dfd5395cd44";
      };
      r4 = {
        nix = import ../hackage/password-types-1.0.0.0-r4-67c60556adc1c2d93bff589b3cfb6524c46b5aa669275990895654d52d088d4d.nix;
        revNum = 4;
        sha256 = "67c60556adc1c2d93bff589b3cfb6524c46b5aa669275990895654d52d088d4d";
      };
      default = "r4";
    };
  };
}