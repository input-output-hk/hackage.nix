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
  "1.4.0" = {
    sha256 = "0645805304f25e6e0af802d9c4e87a6f42736ea13e1eeb5e3a69e3ea1ab6ec5a";
    revisions = {
      r0 = {
        nix = import ../hackage/ihp-openai-1.4.0-r0-512ca75ea8f03bc8b13d27986111c3438c098e0ac1911441ec75ae8a0a1b90cb.nix;
        revNum = 0;
        sha256 = "512ca75ea8f03bc8b13d27986111c3438c098e0ac1911441ec75ae8a0a1b90cb";
      };
      default = "r0";
    };
  };
}