{
  "0.1.0.0" = {
    sha256 = "062f42e89d86e0fdca7e139f4722490f0155024784f1a6fabb41fcf00192dd70";
    revisions = {
      r0 = {
        nix = import ../hackage/streaming-base64-0.1.0.0-r0-07e882813f9e22561dd742cba9f2789a4991477cce542ed47e77d01abe7ca5bf.nix;
        revNum = 0;
        sha256 = "07e882813f9e22561dd742cba9f2789a4991477cce542ed47e77d01abe7ca5bf";
        };
      r1 = {
        nix = import ../hackage/streaming-base64-0.1.0.0-r1-39c13f271422b7f295d4cb210fe788472d6e108ee281e9b3f38357c1990d8755.nix;
        revNum = 1;
        sha256 = "39c13f271422b7f295d4cb210fe788472d6e108ee281e9b3f38357c1990d8755";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "926e2066a0ca75c2ad5d676b824e311d9e9bdbdfc5a93a4e778bc4021a6dd27b";
    revisions = {
      r0 = {
        nix = import ../hackage/streaming-base64-0.1.1.0-r0-3bf2da52d920c47376f924641961c4ec9a20e4808adee7710ffc81c799b3c88c.nix;
        revNum = 0;
        sha256 = "3bf2da52d920c47376f924641961c4ec9a20e4808adee7710ffc81c799b3c88c";
        };
      default = "r0";
      };
    };
  }