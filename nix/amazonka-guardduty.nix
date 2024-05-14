{
  "1.6.0" = {
    sha256 = "fdafe838eac784440cf813a31503b7ce4e3c06f08ff72d3da2f6c98726ef1515";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-guardduty-1.6.0-r0-4ae22ca95894b2838e70c5d815d6695ea956a7738b9cdd3f6ab955e6789518fa.nix;
        revNum = 0;
        sha256 = "4ae22ca95894b2838e70c5d815d6695ea956a7738b9cdd3f6ab955e6789518fa";
      };
      r1 = {
        nix = import ../hackage/amazonka-guardduty-1.6.0-r1-a1c1e6ecfecea12c7d84f08a6a78c565a52cb29c895af73002670ab65040676a.nix;
        revNum = 1;
        sha256 = "a1c1e6ecfecea12c7d84f08a6a78c565a52cb29c895af73002670ab65040676a";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "3d80b6d67ce57ad0e3649da834a973ac139d4b158ed0e88bc476fc27a7bf3d6c";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-guardduty-1.6.1-r0-376e45e1576849b1bbad6c0b1cf8adfafdabcd2a1e900a964f31153205669785.nix;
        revNum = 0;
        sha256 = "376e45e1576849b1bbad6c0b1cf8adfafdabcd2a1e900a964f31153205669785";
      };
      r1 = {
        nix = import ../hackage/amazonka-guardduty-1.6.1-r1-a6ee55067fc80c24147bf7b69cbe5b1331565f15f08c40a9516876a40649fec5.nix;
        revNum = 1;
        sha256 = "a6ee55067fc80c24147bf7b69cbe5b1331565f15f08c40a9516876a40649fec5";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "bcb1185866272efcdf5badd1862b3aeb5e4f754737275385cffad0da85f1f51e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-guardduty-2.0-r0-9ce720c50582717256a4752c40df0f24e49d7eaa32869ba08ee2f7c7ccffb5e9.nix;
        revNum = 0;
        sha256 = "9ce720c50582717256a4752c40df0f24e49d7eaa32869ba08ee2f7c7ccffb5e9";
      };
      r1 = {
        nix = import ../hackage/amazonka-guardduty-2.0-r1-ef6944e9d989dd1305663382a297c7d4a3c293882ccfcebd8ec921605c7c5298.nix;
        revNum = 1;
        sha256 = "ef6944e9d989dd1305663382a297c7d4a3c293882ccfcebd8ec921605c7c5298";
      };
      default = "r1";
    };
  };
}