{
  "1.6.0" = {
    sha256 = "51a5291d18af03dffcb8ea7349656f21b7479f1c56f7e1c49d464432ef895239";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediapackage-1.6.0-r0-002b4ee1e564c601d5b164fd48a1869c8b8754798ad05b7191dcf571626aeeb5.nix;
        revNum = 0;
        sha256 = "002b4ee1e564c601d5b164fd48a1869c8b8754798ad05b7191dcf571626aeeb5";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediapackage-1.6.0-r1-fb724b719ee0287b13462109333dcf72eb165ef7f1ac17429bcbc65274cca257.nix;
        revNum = 1;
        sha256 = "fb724b719ee0287b13462109333dcf72eb165ef7f1ac17429bcbc65274cca257";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "437e432408ea6de548750c5dd24cb120f54744575325e4097f581d8eda825e21";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediapackage-1.6.1-r0-9fa7312da7962d8f0f3cf24bc3afa8244e1ca731ac88f69bbdc5bd887ba1b81c.nix;
        revNum = 0;
        sha256 = "9fa7312da7962d8f0f3cf24bc3afa8244e1ca731ac88f69bbdc5bd887ba1b81c";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediapackage-1.6.1-r1-0c15318df0e6dfe94924eccda81ab5902ebc1a5393a0de27d49cefe3253df721.nix;
        revNum = 1;
        sha256 = "0c15318df0e6dfe94924eccda81ab5902ebc1a5393a0de27d49cefe3253df721";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "a792c3398b8bd7f2ba6ec4227b4faac7bbd5b0e82151a240fb3e712e03a7d863";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediapackage-2.0-r0-870039f15921c2c15b198fb137249ffa07827f9cdea7a7e301d89fbdfbf61ab9.nix;
        revNum = 0;
        sha256 = "870039f15921c2c15b198fb137249ffa07827f9cdea7a7e301d89fbdfbf61ab9";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediapackage-2.0-r1-38397e0f6e918b63d78330cc8e83d2e103a86a368f8c7e578068ae286fbea320.nix;
        revNum = 1;
        sha256 = "38397e0f6e918b63d78330cc8e83d2e103a86a368f8c7e578068ae286fbea320";
      };
      default = "r1";
    };
  };
}