{
  "0.1.0.0" = {
    sha256 = "e22573ba1e56d644136fb17b5328724389df2c06333e8578badbd8a32bfc7a42";
    revisions = {
      r0 = {
        nix = import ../hackage/connection-string-0.1.0.0-r0-7978c98514b20f68e24cf50b4824f5f377c5a3437994c06f89b9ba44efe0c18a.nix;
        revNum = 0;
        sha256 = "7978c98514b20f68e24cf50b4824f5f377c5a3437994c06f89b9ba44efe0c18a";
        };
      r1 = {
        nix = import ../hackage/connection-string-0.1.0.0-r1-6225b3119981599713af64ff13d9f777a1f2b5866ef4a75821622808747b397e.nix;
        revNum = 1;
        sha256 = "6225b3119981599713af64ff13d9f777a1f2b5866ef4a75821622808747b397e";
        };
      default = "r1";
      };
    };
  "0.2.0.0" = {
    sha256 = "32fc31673474742bf72c38c4ed07f71b03fa5dd8202e2e25b8d91ef9de67493e";
    revisions = {
      r0 = {
        nix = import ../hackage/connection-string-0.2.0.0-r0-2190ab7e50d217d4dc124d579ab81bfb84efba3756f74fbd2c9915e1fa482252.nix;
        revNum = 0;
        sha256 = "2190ab7e50d217d4dc124d579ab81bfb84efba3756f74fbd2c9915e1fa482252";
        };
      default = "r0";
      };
    };
  }