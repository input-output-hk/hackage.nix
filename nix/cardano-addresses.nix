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
}