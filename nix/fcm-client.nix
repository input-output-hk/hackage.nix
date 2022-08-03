{
  "0.1.0.0" = {
    sha256 = "b4b16a30d11db2e0ce33eb253f8f37fbeb93ffc0e31742fa3aedc4c7dd1d64e3";
    revisions = {
      r0 = {
        nix = import ../hackage/fcm-client-0.1.0.0-r0-d9a070d4b7dba3af84f709c26a25434377100e624b5f4cd6b15c67e8326e7477.nix;
        revNum = 0;
        sha256 = "d9a070d4b7dba3af84f709c26a25434377100e624b5f4cd6b15c67e8326e7477";
        };
      r1 = {
        nix = import ../hackage/fcm-client-0.1.0.0-r1-74004b5bc5ec0bc386b4fb7ace0bedacf1b9272a6c9b9eda123254015f4a6be7.nix;
        revNum = 1;
        sha256 = "74004b5bc5ec0bc386b4fb7ace0bedacf1b9272a6c9b9eda123254015f4a6be7";
        };
      default = "r1";
      };
    };
  "0.2.0.0" = {
    sha256 = "d23e2b3f6a506425ead37ceb105d391dc5cc53dabafe226273982f049ea93494";
    revisions = {
      r0 = {
        nix = import ../hackage/fcm-client-0.2.0.0-r0-6b67f0d23a09504f763ef547306b015b93af376e922583c7e3a4a7f494f85539.nix;
        revNum = 0;
        sha256 = "6b67f0d23a09504f763ef547306b015b93af376e922583c7e3a4a7f494f85539";
        };
      default = "r0";
      };
    };
  }