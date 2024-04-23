{
  "0.1.0.0" = {
    sha256 = "676a6c5b390296b9877e631e7001e150a57b78edb9459bd17f40e7237b7d7b21";
    revisions = {
      r0 = {
        nix = import ../hackage/captcha-core-0.1.0.0-r0-1985c3b0abb5d59d7b881aac55f8a6178631bd1425b54b95714ab5b10dd892cd.nix;
        revNum = 0;
        sha256 = "1985c3b0abb5d59d7b881aac55f8a6178631bd1425b54b95714ab5b10dd892cd";
      };
      r1 = {
        nix = import ../hackage/captcha-core-0.1.0.0-r1-f3c46c2986985a73ab8a35cf36c5a826b2ffac74d9b300a9e877bf1a0a75b9a2.nix;
        revNum = 1;
        sha256 = "f3c46c2986985a73ab8a35cf36c5a826b2ffac74d9b300a9e877bf1a0a75b9a2";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "0d53491460c1a37decc32677fcf424c3cf8e26f6070f64d24622fb5b57af54e1";
    revisions = {
      r0 = {
        nix = import ../hackage/captcha-core-0.1.0.1-r0-1420b30de2a089b42b4e1c2a76056b1bad8d81198009dd41d88315552304e342.nix;
        revNum = 0;
        sha256 = "1420b30de2a089b42b4e1c2a76056b1bad8d81198009dd41d88315552304e342";
      };
      r1 = {
        nix = import ../hackage/captcha-core-0.1.0.1-r1-b8d5cab7cd6844173120a733b73f4de5183ff1b367b188a1aebbc0a17600f36f.nix;
        revNum = 1;
        sha256 = "b8d5cab7cd6844173120a733b73f4de5183ff1b367b188a1aebbc0a17600f36f";
      };
      default = "r1";
    };
  };
}