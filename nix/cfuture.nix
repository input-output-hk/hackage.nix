{
  "1.0" = {
    sha256 = "6a8ca9078ec61dbc7db329502d343fb8de5d213d1c4b4f277a609122e41ad1c5";
    revisions = {
      r0 = {
        nix = import ../hackage/cfuture-1.0-r0-7528fd42e4ba05f424f9a3e6309eb87e16c9c7b3b1944d89bc4cb56fea0fd5a2.nix;
        revNum = 0;
        sha256 = "7528fd42e4ba05f424f9a3e6309eb87e16c9c7b3b1944d89bc4cb56fea0fd5a2";
      };
      default = "r0";
    };
  };
  "2.0" = {
    sha256 = "43f3a7a7fe83c87d7937d4e2f9220853147680630ae6e602d1076516feb68cf0";
    revisions = {
      r0 = {
        nix = import ../hackage/cfuture-2.0-r0-628dc1817bad508feedb0fb703c9dd8a951e18cd890d7fe59ee2cf1c960c9c9d.nix;
        revNum = 0;
        sha256 = "628dc1817bad508feedb0fb703c9dd8a951e18cd890d7fe59ee2cf1c960c9c9d";
      };
      default = "r0";
    };
  };
}