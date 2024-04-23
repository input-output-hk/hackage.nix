{
  "0.1.1.0" = {
    sha256 = "92a62c5b4db49d70fe265b7722879e111d455a587dc4ad77d520b2f6b2ec99f4";
    revisions = {
      r0 = {
        nix = import ../hackage/GOST34112012-Hash-0.1.1.0-r0-f6c46c332d3c00a00cae53579a6e5513199868349ea687a2fbc12bb1eb104ccf.nix;
        revNum = 0;
        sha256 = "f6c46c332d3c00a00cae53579a6e5513199868349ea687a2fbc12bb1eb104ccf";
      };
      default = "r0";
    };
  };
  "0.1.1.1" = {
    sha256 = "9f0973d901c5c8557546a17a7d3f9c5f473387e2f27171a1b9329620f1c0a89d";
    revisions = {
      r0 = {
        nix = import ../hackage/GOST34112012-Hash-0.1.1.1-r0-b377cee642f3ed650fd360029c02f6838c1c4142b86f9a06a4d34404e4e93735.nix;
        revNum = 0;
        sha256 = "b377cee642f3ed650fd360029c02f6838c1c4142b86f9a06a4d34404e4e93735";
      };
      default = "r0";
    };
  };
  "0.1.1.2" = {
    sha256 = "44ca372342ae0e2055882a33f72c9092812e007f4111424677b99545f8bd7690";
    revisions = {
      r0 = {
        nix = import ../hackage/GOST34112012-Hash-0.1.1.2-r0-a8ade32ca50cba9cb5181042e7faeaa13d9f8eb8ff2bd9fc89fde4baa96abba1.nix;
        revNum = 0;
        sha256 = "a8ade32ca50cba9cb5181042e7faeaa13d9f8eb8ff2bd9fc89fde4baa96abba1";
      };
      r1 = {
        nix = import ../hackage/GOST34112012-Hash-0.1.1.2-r1-b7a5bc0ec126b8c7224f2617280e1a553fa2a4420fa202fa5a747d4a5adab7fd.nix;
        revNum = 1;
        sha256 = "b7a5bc0ec126b8c7224f2617280e1a553fa2a4420fa202fa5a747d4a5adab7fd";
      };
      r2 = {
        nix = import ../hackage/GOST34112012-Hash-0.1.1.2-r2-b00122086b1c4062b13099c78304e6e41ed0041dbead987fde5894bebd113966.nix;
        revNum = 2;
        sha256 = "b00122086b1c4062b13099c78304e6e41ed0041dbead987fde5894bebd113966";
      };
      default = "r2";
    };
  };
}