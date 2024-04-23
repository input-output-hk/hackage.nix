{
  "0.1" = {
    sha256 = "6e6c32dcdfa6bb48a24d8a46ab21b26a15d2db8a16bdbe9d6d40aea80d68173c";
    revisions = {
      r0 = {
        nix = import ../hackage/binary-protocol-zmq-0.1-r0-e00c0705007cc73aa0588d026d0e2d14d5c2b3b0ca511a33adeedd60cea50f9a.nix;
        revNum = 0;
        sha256 = "e00c0705007cc73aa0588d026d0e2d14d5c2b3b0ca511a33adeedd60cea50f9a";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "beaad38fb11794b368e69f3b84d46809440a1afae26110401c79c9c0a6b94a92";
    revisions = {
      r0 = {
        nix = import ../hackage/binary-protocol-zmq-0.2-r0-06f9c7b01299f0762e24aeef705e329e7f649c54f8404442680057cfd8cfc8b4.nix;
        revNum = 0;
        sha256 = "06f9c7b01299f0762e24aeef705e329e7f649c54f8404442680057cfd8cfc8b4";
      };
      default = "r0";
    };
  };
}