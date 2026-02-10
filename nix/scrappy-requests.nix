{
  "0.1.0.0" = {
    sha256 = "b419e1285fd90fadf018ced65c235080708d4fe504b910f60c1ac2a445930b66";
    revisions = {
      r0 = {
        nix = import ../hackage/scrappy-requests-0.1.0.0-r0-61d262e00dd196382056ab210ae0eb655d146979d69efcc18aadfc9ed251c177.nix;
        revNum = 0;
        sha256 = "61d262e00dd196382056ab210ae0eb655d146979d69efcc18aadfc9ed251c177";
      };
      r1 = {
        nix = import ../hackage/scrappy-requests-0.1.0.0-r1-9d9bbd358b68043fe4e3ccd7f9abd9ea9874325e4fc897e0a6ad3d642286bc76.nix;
        revNum = 1;
        sha256 = "9d9bbd358b68043fe4e3ccd7f9abd9ea9874325e4fc897e0a6ad3d642286bc76";
      };
      default = "r1";
    };
  };
}