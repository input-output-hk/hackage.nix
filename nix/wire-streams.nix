{
  "0.0.2.0" = {
    sha256 = "2b03e9c88767a371d59ca5d941db3c3f5b11ba1b8a20606732a706acebe6dd4f";
    revisions = {
      r0 = {
        nix = import ../hackage/wire-streams-0.0.2.0-r0-2241bc12390fb7603fc5628eaa7b18e3215d9466618879e0bc92cd1e09f23219.nix;
        revNum = 0;
        sha256 = "2241bc12390fb7603fc5628eaa7b18e3215d9466618879e0bc92cd1e09f23219";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "c59bf4e8a69369f6d09040d237090bd5de4fea2f3f02433c044b7580e4a91eef";
    revisions = {
      r0 = {
        nix = import ../hackage/wire-streams-0.1.0.0-r0-6559314e777dead34a6f2bc9f9fb5fe949141b7b604b4f2d473c720da2766e78.nix;
        revNum = 0;
        sha256 = "6559314e777dead34a6f2bc9f9fb5fe949141b7b604b4f2d473c720da2766e78";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "96dffb70c08c89589881c96f199d271b55e4a5b3cc5be0f3e24e101858e2fb27";
    revisions = {
      r0 = {
        nix = import ../hackage/wire-streams-0.1.1.0-r0-7a62f490580176436899d7e91e22ba15b3053a5e556cf58a13e03f68a69e772d.nix;
        revNum = 0;
        sha256 = "7a62f490580176436899d7e91e22ba15b3053a5e556cf58a13e03f68a69e772d";
      };
      r1 = {
        nix = import ../hackage/wire-streams-0.1.1.0-r1-08816c7fa53b20f52e5c465252c106d9de8e6d9580ec0b6d9f000a34c7bcefc8.nix;
        revNum = 1;
        sha256 = "08816c7fa53b20f52e5c465252c106d9de8e6d9580ec0b6d9f000a34c7bcefc8";
      };
      default = "r1";
    };
  };
}