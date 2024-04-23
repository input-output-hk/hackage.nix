{
  "0.0.0.0" = {
    sha256 = "15fd03a044a54a20124311bbac2a692becc4fdc97296b04fc9fb85d30eeda0de";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-simple-ltree-0.0.0.0-r0-32ccd33a1f912d16d42eaeba4051eacc9024e428887b33791343baa3d2a9dbfa.nix;
        revNum = 0;
        sha256 = "32ccd33a1f912d16d42eaeba4051eacc9024e428887b33791343baa3d2a9dbfa";
      };
      r1 = {
        nix = import ../hackage/postgresql-simple-ltree-0.0.0.0-r1-4547489ebbbfa5aed8ba7cbb9495732794eda52b13efa8b52358b2b51f7355b3.nix;
        revNum = 1;
        sha256 = "4547489ebbbfa5aed8ba7cbb9495732794eda52b13efa8b52358b2b51f7355b3";
      };
      default = "r1";
    };
  };
}