{
  "0.1.0.0" = {
    sha256 = "ff4036d34711e94c6d2309a34010f856f1917726de06a3b8f7ca6d72d2cbbc7e";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-core-0.1.0.0-r0-a36c2fe61bd8eb13c2735544f5aef72fb35c552de2e9309dc73f484b4114d648.nix;
        revNum = 0;
        sha256 = "a36c2fe61bd8eb13c2735544f5aef72fb35c552de2e9309dc73f484b4114d648";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "3d7c23ffb265c5ae615ba08c05bbea4c3654f9c84c41488c787017695ec00422";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-core-0.2.0.0-r0-1b6582bede6ac4e7aa0077159de2d21517452e9fe8aca5ea39f8d910c3346cee.nix;
        revNum = 0;
        sha256 = "1b6582bede6ac4e7aa0077159de2d21517452e9fe8aca5ea39f8d910c3346cee";
      };
      default = "r0";
    };
  };
}