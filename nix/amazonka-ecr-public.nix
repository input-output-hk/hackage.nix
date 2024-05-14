{
  "2.0" = {
    sha256 = "76cdf2feabc26975a6e1f0989022637292c25bbfc31c4bf1648244572a91af00";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ecr-public-2.0-r0-3a4173d754d44da4f44adad5ad240626a0d5b74d043c015cfd1e9c6880804717.nix;
        revNum = 0;
        sha256 = "3a4173d754d44da4f44adad5ad240626a0d5b74d043c015cfd1e9c6880804717";
      };
      r1 = {
        nix = import ../hackage/amazonka-ecr-public-2.0-r1-18756970558f9a03992cbe5b2d4ee9fe066e2f679f894681ecdeaea5aef38b86.nix;
        revNum = 1;
        sha256 = "18756970558f9a03992cbe5b2d4ee9fe066e2f679f894681ecdeaea5aef38b86";
      };
      default = "r1";
    };
  };
}