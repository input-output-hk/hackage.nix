{
  "0.1.0.0" = {
    sha256 = "e5bfa086ca472368577dd930791c2dc3a5242160e566dfd1b5f2551d60922f25";
    revisions = {
      r0 = {
        nix = import ../hackage/pretty-html-0.1.0.0-r0-7f9bb3c0531d7a74be7c9ec13fd29b18b7b329266d89df7d958a09d3b27985da.nix;
        revNum = 0;
        sha256 = "7f9bb3c0531d7a74be7c9ec13fd29b18b7b329266d89df7d958a09d3b27985da";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "39cfe1f02b9641154f1e76df160820ac2773bade398ad8214fd576c99a97c291";
    revisions = {
      r0 = {
        nix = import ../hackage/pretty-html-0.1.0.1-r0-d8c9132521b4874f97c029fde99058f8d9c3b3ead7677d1b8116701bc1fb2415.nix;
        revNum = 0;
        sha256 = "d8c9132521b4874f97c029fde99058f8d9c3b3ead7677d1b8116701bc1fb2415";
      };
      r1 = {
        nix = import ../hackage/pretty-html-0.1.0.1-r1-e33eec654f93fe61cdc2939b0f4b4d947246eb8400ffaf9e9d62eb1d0001ab24.nix;
        revNum = 1;
        sha256 = "e33eec654f93fe61cdc2939b0f4b4d947246eb8400ffaf9e9d62eb1d0001ab24";
      };
      default = "r1";
    };
  };
}