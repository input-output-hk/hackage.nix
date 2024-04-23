{
  "0.0.1" = {
    sha256 = "7f8afe4ae41435a6e79281439e198094c058cc34ddd77ac3a7624be2eb602eea";
    revisions = {
      r0 = {
        nix = import ../hackage/subnet-0.0.1-r0-672ec0f6a4440afbb8082a7e58921184bb5c0d064285116bf93e2be558b4da80.nix;
        revNum = 0;
        sha256 = "672ec0f6a4440afbb8082a7e58921184bb5c0d064285116bf93e2be558b4da80";
      };
      default = "r0";
    };
  };
  "0.0.1.2" = {
    sha256 = "db262492bac9b1eeb81b8143f9f771ce77c9e2ebb7c83afa47bb43da1fd533a5";
    revisions = {
      r0 = {
        nix = import ../hackage/subnet-0.0.1.2-r0-05abb318a5aecbbaf1251547ab0ab4991d91cfb34cb47a818192f9224f8b86ac.nix;
        revNum = 0;
        sha256 = "05abb318a5aecbbaf1251547ab0ab4991d91cfb34cb47a818192f9224f8b86ac";
      };
      default = "r0";
    };
  };
}