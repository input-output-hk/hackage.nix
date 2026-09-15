{
  "1.0.0" = {
    sha256 = "e290daba8ea7de73209411b975dc9dac2a21c991fee44c89888e4ddb18ed9332";
    revisions = {
      r0 = {
        nix = import ../hackage/http2-client-grpc-effectful-1.0.0-r0-c80e228d053bf179fe6197e495adf336681c633c202207bf083d95067c473a38.nix;
        revNum = 0;
        sha256 = "c80e228d053bf179fe6197e495adf336681c633c202207bf083d95067c473a38";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "1e318ac34e482efbdf90a74312269d1a69e2fbc50b3f73491b9847d056d58279";
    revisions = {
      r0 = {
        nix = import ../hackage/http2-client-grpc-effectful-1.0.1-r0-ca0367e20ae7d08e75d25761ba42f160b5ba6ea45dd388f4ba7fd4b49508927f.nix;
        revNum = 0;
        sha256 = "ca0367e20ae7d08e75d25761ba42f160b5ba6ea45dd388f4ba7fd4b49508927f";
      };
      r1 = {
        nix = import ../hackage/http2-client-grpc-effectful-1.0.1-r1-4449680173d8a8d7b774a298367e670d4fad91cfc20d21516d81903a33d37fda.nix;
        revNum = 1;
        sha256 = "4449680173d8a8d7b774a298367e670d4fad91cfc20d21516d81903a33d37fda";
      };
      default = "r1";
    };
  };
}