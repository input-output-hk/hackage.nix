{
  "1.3.0" = {
    sha256 = "44f166ada60866eb6d1656c61ae00bcfb61770c7b0419d562bcd24133872669c";
    revisions = {
      r0 = {
        nix = import ../hackage/ihp-openai-1.3.0-r0-f85951b1c6238b7d111bd51c6625ffc98e40cb2c093b36064374214a43a9aedb.nix;
        revNum = 0;
        sha256 = "f85951b1c6238b7d111bd51c6625ffc98e40cb2c093b36064374214a43a9aedb";
      };
      r1 = {
        nix = import ../hackage/ihp-openai-1.3.0-r1-67da409141e65c2363623b74c804578bcc41cc18d0966304d88e75b7c3afe20d.nix;
        revNum = 1;
        sha256 = "67da409141e65c2363623b74c804578bcc41cc18d0966304d88e75b7c3afe20d";
      };
      default = "r1";
    };
  };
}