{
  "1.0" = {
    sha256 = "632d24efaa21f9288fffae3b25413b13892c0fa778abb67c1262f1d98c4c17cc";
    revisions = {
      r0 = {
        nix = import ../hackage/empty-1.0-r0-b3d49cef1398762ef1b8ef7ed422061e4773c3a19808acb0379ddd85508b4254.nix;
        revNum = 0;
        sha256 = "b3d49cef1398762ef1b8ef7ed422061e4773c3a19808acb0379ddd85508b4254";
      };
      default = "r0";
    };
  };
  "9" = {
    sha256 = "a9099c3e5acb7cd4cdab93a7846237d750000b8894fc908ee311173bfcc2e72a";
    revisions = {
      r0 = {
        nix = import ../hackage/empty-9-r0-909546c985d5d2a8d8f152ea745a7d9e91e1348a86cff4d1e25e03b200b9cf3c.nix;
        revNum = 0;
        sha256 = "909546c985d5d2a8d8f152ea745a7d9e91e1348a86cff4d1e25e03b200b9cf3c";
      };
      default = "r0";
    };
  };
}