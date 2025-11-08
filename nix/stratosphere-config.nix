{
  "1.0.0" = {
    sha256 = "f26fc63ca079b2a0a2c1a937b7c23a702e3f1956e47874faa34a61e5b7ee754b";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-config-1.0.0-r0-26487815b756e3453ffe2028845fa09580e988e4279743d50dce53d795168b34.nix;
        revNum = 0;
        sha256 = "26487815b756e3453ffe2028845fa09580e988e4279743d50dce53d795168b34";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "0f82bc0cf9a073162a67526f47d1021e5263483d3765197920cc2daf87ff95b6";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-config-1.0.1-r0-5caf8f1a030fe394e7801304762995d021f16be4286855292d53a628a40a8fc1.nix;
        revNum = 0;
        sha256 = "5caf8f1a030fe394e7801304762995d021f16be4286855292d53a628a40a8fc1";
      };
      default = "r0";
    };
  };
}