{
  "2.0" = {
    sha256 = "9428973246d31e54407e7ff25c0a3848abc9714fe3aea1ddbb74a0230017ab6b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kinesis-video-webrtc-storage-2.0-r0-03bf7f287d7f534206d652a5051bc7e85f42657e79c49e9aacf0ab47e971a67f.nix;
        revNum = 0;
        sha256 = "03bf7f287d7f534206d652a5051bc7e85f42657e79c49e9aacf0ab47e971a67f";
      };
      r1 = {
        nix = import ../hackage/amazonka-kinesis-video-webrtc-storage-2.0-r1-8698ca5784b5c261c5c426ad517239fceef1a87ad9f455c1121a958b4a9c49fa.nix;
        revNum = 1;
        sha256 = "8698ca5784b5c261c5c426ad517239fceef1a87ad9f455c1121a958b4a9c49fa";
      };
      default = "r1";
    };
  };
}