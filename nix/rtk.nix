{
  "0.11" = {
    sha256 = "2baaa02c40d81dde6bc4d62704e9f9b08e158120fb052a514ba0a002829e1923";
    revisions = {
      r0 = {
        nix = import ../hackage/rtk-0.11-r0-6b713ecfe8ae07309d38850f25247227ce8ee5720cb6cd4d7985afc856f495d5.nix;
        revNum = 0;
        sha256 = "6b713ecfe8ae07309d38850f25247227ce8ee5720cb6cd4d7985afc856f495d5";
      };
      default = "r0";
    };
  };
  "0.12" = {
    sha256 = "c99b83116329593e3cf260b31d45da9de85a70cfcf20184dc045755e74166403";
    revisions = {
      r0 = {
        nix = import ../hackage/rtk-0.12-r0-542355fbfb8ee74bfb3f3f889b1431b306eba1f239a0996ec850776941b0aeff.nix;
        revNum = 0;
        sha256 = "542355fbfb8ee74bfb3f3f889b1431b306eba1f239a0996ec850776941b0aeff";
      };
      default = "r0";
    };
  };
}