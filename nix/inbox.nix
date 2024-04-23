{
  "0.1.0" = {
    sha256 = "382b9fdc1c51952031def648e0e99e6668da1597186c19916ae59c9362130188";
    revisions = {
      r0 = {
        nix = import ../hackage/inbox-0.1.0-r0-e79045a6a056d75eb5084e70ca8a583a59bf7514fee9b7e38c04e12dbc0618a2.nix;
        revNum = 0;
        sha256 = "e79045a6a056d75eb5084e70ca8a583a59bf7514fee9b7e38c04e12dbc0618a2";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "53d588fd3ef9995ad41121f38a26ccfdc7de7dbf5b11327a0701c79fdfcc92b8";
    revisions = {
      r0 = {
        nix = import ../hackage/inbox-0.2.0-r0-b8260d6ac184c77e00a0a85a8c2dec4f0c57030e783ac5e39c255ef81ecbacfe.nix;
        revNum = 0;
        sha256 = "b8260d6ac184c77e00a0a85a8c2dec4f0c57030e783ac5e39c255ef81ecbacfe";
      };
      default = "r0";
    };
  };
}