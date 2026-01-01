{
  "4.0.0" = {
    sha256 = "8487dca5bca38c261c13c42928557cd5c0ea48bb289e370a4b7278a8eb579b8d";
    revisions = {
      r0 = {
        nix = import ../hackage/cardano-addresses-4.0.0-r0-67a9934ad3e0e0421a2a4105c8480c2de6d302fa61602d802836f379b4427974.nix;
        revNum = 0;
        sha256 = "67a9934ad3e0e0421a2a4105c8480c2de6d302fa61602d802836f379b4427974";
      };
      r1 = {
        nix = import ../hackage/cardano-addresses-4.0.0-r1-bb0f8146494fa81507f102187e141ee7d3ce7c19dbf319b70906931636d79eaa.nix;
        revNum = 1;
        sha256 = "bb0f8146494fa81507f102187e141ee7d3ce7c19dbf319b70906931636d79eaa";
      };
      default = "r1";
    };
  };
  "4.0.1" = {
    sha256 = "626725f49c230e34bbe849407e0492226285a9d9a9a8721a80c1bb5c36293569";
    revisions = {
      r0 = {
        nix = import ../hackage/cardano-addresses-4.0.1-r0-70583a1386981cf6112dcd2165bd245aa32c4407ed2b498b291fc7631b91de39.nix;
        revNum = 0;
        sha256 = "70583a1386981cf6112dcd2165bd245aa32c4407ed2b498b291fc7631b91de39";
      };
      default = "r0";
    };
  };
  "4.0.2" = {
    sha256 = "88208c5d11c0492faca626acdf67b08474e1b2b7af12720a070fb4a2d7c92d29";
    revisions = {
      r0 = {
        nix = import ../hackage/cardano-addresses-4.0.2-r0-15e702d5551acaf466e973a53ab66d2bbb9579a50d6a070379bf143661dbd963.nix;
        revNum = 0;
        sha256 = "15e702d5551acaf466e973a53ab66d2bbb9579a50d6a070379bf143661dbd963";
      };
      default = "r0";
    };
  };
}