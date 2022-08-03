{
  "0.2" = {
    sha256 = "063d52fd427037439973dbd24477c9cb3779a971b4604e5b61632f9d613e3985";
    revisions = {
      r0 = {
        nix = import ../hackage/sdp4bytestring-0.2-r0-611cfc59ee3234fbc74139f61785191915e3e545f54d6c0b50b7625f3a16fe05.nix;
        revNum = 0;
        sha256 = "611cfc59ee3234fbc74139f61785191915e3e545f54d6c0b50b7625f3a16fe05";
        };
      r1 = {
        nix = import ../hackage/sdp4bytestring-0.2-r1-eaa91afb4c6d95c7533526c570b118bf82e2a50be3a03c532dd8d643931791cf.nix;
        revNum = 1;
        sha256 = "eaa91afb4c6d95c7533526c570b118bf82e2a50be3a03c532dd8d643931791cf";
        };
      default = "r1";
      };
    };
  }