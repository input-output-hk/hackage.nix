{
  "1.6.0" = {
    sha256 = "f27f83967e4d180d332758b0c9c3022de7d2e194d29e1e0f8921649192101260";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-resourcegroups-1.6.0-r0-ddcd81327a694bb52f07011ac79fa62ea77922d47ac193c631bbf686fafac00c.nix;
        revNum = 0;
        sha256 = "ddcd81327a694bb52f07011ac79fa62ea77922d47ac193c631bbf686fafac00c";
      };
      r1 = {
        nix = import ../hackage/amazonka-resourcegroups-1.6.0-r1-67e2324c437ccd4477143f5a82c0f70170a20cdc688ca826b19fc2e5c231a4d6.nix;
        revNum = 1;
        sha256 = "67e2324c437ccd4477143f5a82c0f70170a20cdc688ca826b19fc2e5c231a4d6";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "13e073d6ec159c0308a08ce5678cb2c73d119bcce71f0b6503eba4ed6161ca5b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-resourcegroups-1.6.1-r0-60c58185e3cf8ade26b076dc19af34c66fad035d3b52ec268eb65cf9ea6dbf9e.nix;
        revNum = 0;
        sha256 = "60c58185e3cf8ade26b076dc19af34c66fad035d3b52ec268eb65cf9ea6dbf9e";
      };
      r1 = {
        nix = import ../hackage/amazonka-resourcegroups-1.6.1-r1-a997fc2c890604b8d1400a5f4f7f0685739e7b85d3ecb302a39d27400c7e52d7.nix;
        revNum = 1;
        sha256 = "a997fc2c890604b8d1400a5f4f7f0685739e7b85d3ecb302a39d27400c7e52d7";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "52476298708654e204ad41e0df2043f314b86db71b32624ae2ef47a586666e39";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-resourcegroups-2.0-r0-aa5062779f9819d3f020f95eafc9a05998a4c4a30db67a71df163de7a2f5284a.nix;
        revNum = 0;
        sha256 = "aa5062779f9819d3f020f95eafc9a05998a4c4a30db67a71df163de7a2f5284a";
      };
      r1 = {
        nix = import ../hackage/amazonka-resourcegroups-2.0-r1-df5d9862cf1739ba414f32083de0d1222a5380061492826602a43f9e2b936c7d.nix;
        revNum = 1;
        sha256 = "df5d9862cf1739ba414f32083de0d1222a5380061492826602a43f9e2b936c7d";
      };
      default = "r1";
    };
  };
}