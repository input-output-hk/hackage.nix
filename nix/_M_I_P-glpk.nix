{
  "0.1.1.0" = {
    sha256 = "5285579ebb9ea94ef68033832d5d26df2f8284189525e80cbdf06b2d51348da7";
    revisions = {
      r0 = {
        nix = import ../hackage/MIP-glpk-0.1.1.0-r0-8a6ef95ff7fea604b129897f6ba0265044e351f4ad9bb40818dc82798c3b1a38.nix;
        revNum = 0;
        sha256 = "8a6ef95ff7fea604b129897f6ba0265044e351f4ad9bb40818dc82798c3b1a38";
      };
      r1 = {
        nix = import ../hackage/MIP-glpk-0.1.1.0-r1-b90de92d1614e273a20e23ecc0db7ec79ecdb22fa4661254d8b1ee5d0e224c46.nix;
        revNum = 1;
        sha256 = "b90de92d1614e273a20e23ecc0db7ec79ecdb22fa4661254d8b1ee5d0e224c46";
      };
      r2 = {
        nix = import ../hackage/MIP-glpk-0.1.1.0-r2-6282000d2bb65b075f0094d598e7166a32516dea9e42325f6fa64385c6e35789.nix;
        revNum = 2;
        sha256 = "6282000d2bb65b075f0094d598e7166a32516dea9e42325f6fa64385c6e35789";
      };
      default = "r2";
    };
  };
  "0.2.0.0" = {
    sha256 = "356c73d8931b0e05d2947e53022b2b65dee3e21b6de18b485a58bd37eca32498";
    revisions = {
      r0 = {
        nix = import ../hackage/MIP-glpk-0.2.0.0-r0-6e431d1173ed314754e5450f1ded4bb06c79241efef25b7bf1847c584c63942d.nix;
        revNum = 0;
        sha256 = "6e431d1173ed314754e5450f1ded4bb06c79241efef25b7bf1847c584c63942d";
      };
      default = "r0";
    };
  };
}