{
  "2.0" = {
    sha256 = "35b455676dbc4bcad492f4f4e98a13b15600d3933f0a83486d330e7ed6149d17";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-s3outposts-2.0-r0-e1013d893bf5580b875f67af317b8dc8181b886a4477c04303959af15ed9704b.nix;
        revNum = 0;
        sha256 = "e1013d893bf5580b875f67af317b8dc8181b886a4477c04303959af15ed9704b";
      };
      r1 = {
        nix = import ../hackage/amazonka-s3outposts-2.0-r1-8b193f0d433958532fa3d184163242394991ee198e726fa3144e76eafc33e6f4.nix;
        revNum = 1;
        sha256 = "8b193f0d433958532fa3d184163242394991ee198e726fa3144e76eafc33e6f4";
      };
      default = "r1";
    };
  };
}