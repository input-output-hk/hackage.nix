{
  "0.1.0.0" = {
    sha256 = "86108ab86de1a0ce039f8e94d7dd9779b3e28672c3643dc601552eae5f70824d";
    revisions = {
      r0 = {
        nix = import ../hackage/moonlight-core-0.1.0.0-r0-ea571ae717ead7b24855bc37ef1721fbca6df9dba09ba656ece51fbaaa527b6c.nix;
        revNum = 0;
        sha256 = "ea571ae717ead7b24855bc37ef1721fbca6df9dba09ba656ece51fbaaa527b6c";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "8c7409455343286a4376b3227eff428ad43470e8505b8032aa19bac34a4c49c3";
    revisions = {
      r0 = {
        nix = import ../hackage/moonlight-core-0.1.0.1-r0-7884efb756d5591281e479b8570beef7b81cf37aa226fa2490665a86dcb98dc1.nix;
        revNum = 0;
        sha256 = "7884efb756d5591281e479b8570beef7b81cf37aa226fa2490665a86dcb98dc1";
      };
      default = "r0";
    };
  };
}