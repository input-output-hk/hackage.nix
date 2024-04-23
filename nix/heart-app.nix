{
  "0.1.0" = {
    sha256 = "706bb6c5286398fd7eeb2ede02e3ad59035b7cf530b43d5a92741ddca2c2efcb";
    revisions = {
      r0 = {
        nix = import ../hackage/heart-app-0.1.0-r0-d62351bf8cf35cf71ce9d3e5eab0204711245747a051183c36ea6e124f51bc7d.nix;
        revNum = 0;
        sha256 = "d62351bf8cf35cf71ce9d3e5eab0204711245747a051183c36ea6e124f51bc7d";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "ab89db0c57101cc4d82b426254b6fcff0f32af1aea457bb5f88b17b8fb3f2ef2";
    revisions = {
      r0 = {
        nix = import ../hackage/heart-app-0.1.1-r0-e9f67f8cd4e020a3cf0c6abb5827b04ecfd0e595bebe6ff2673b28765d8f8456.nix;
        revNum = 0;
        sha256 = "e9f67f8cd4e020a3cf0c6abb5827b04ecfd0e595bebe6ff2673b28765d8f8456";
      };
      default = "r0";
    };
  };
}