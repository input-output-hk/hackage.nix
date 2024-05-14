{
  "2.0" = {
    sha256 = "cfe6e97c9cadbe2535baeed887ef7a32de0ed04f470a33086faf623d0a028e11";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iotevents-data-2.0-r0-b69a38731766a6b183ac78f0e742565ce482987c604cea6bdd2455d8f6fd2731.nix;
        revNum = 0;
        sha256 = "b69a38731766a6b183ac78f0e742565ce482987c604cea6bdd2455d8f6fd2731";
      };
      r1 = {
        nix = import ../hackage/amazonka-iotevents-data-2.0-r1-cde4ce67b3ec2e9e2ab26ce5b6b37cbc1caa327e3a9161cbb4c958ffa5c357a5.nix;
        revNum = 1;
        sha256 = "cde4ce67b3ec2e9e2ab26ce5b6b37cbc1caa327e3a9161cbb4c958ffa5c357a5";
      };
      default = "r1";
    };
  };
}