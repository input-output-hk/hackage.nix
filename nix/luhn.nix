{
  "0.1" = {
    sha256 = "0e0f013b33724b77496c5dd889fe74b02c4b565d1c6f08827cacffec155e1e2c";
    revisions = {
      r0 = {
        nix = import ../hackage/luhn-0.1-r0-dc415021fc550721cea1d15f581fda21f2e18364b386c1bd6c12d4106b941cea.nix;
        revNum = 0;
        sha256 = "dc415021fc550721cea1d15f581fda21f2e18364b386c1bd6c12d4106b941cea";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "dffa4fcf53e893a2186202953d4dc70006021ade091cda7c5671b43a91e8a747";
    revisions = {
      r0 = {
        nix = import ../hackage/luhn-0.2-r0-845b094881bfcd9371cdb2e63473010b6fbb0801fcb79f7246ce9c3730bb02ee.nix;
        revNum = 0;
        sha256 = "845b094881bfcd9371cdb2e63473010b6fbb0801fcb79f7246ce9c3730bb02ee";
      };
      default = "r0";
    };
  };
}