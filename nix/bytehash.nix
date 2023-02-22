{
  "0.1.0.0" = {
    sha256 = "d5168d58b78aa8a5b537dad08ecc9afd0ce7c03897650d7414079c9dd17788c9";
    revisions = {
      r0 = {
        nix = import ../hackage/bytehash-0.1.0.0-r0-31d9018c896eff6170329774ec1c1b247712448871f2400a541e92e64286c610.nix;
        revNum = 0;
        sha256 = "31d9018c896eff6170329774ec1c1b247712448871f2400a541e92e64286c610";
        };
      r1 = {
        nix = import ../hackage/bytehash-0.1.0.0-r1-3b0cf31be4b58bf77d0a2962f40d4bbfc547c8b226932ddd052c6cd5edb73772.nix;
        revNum = 1;
        sha256 = "3b0cf31be4b58bf77d0a2962f40d4bbfc547c8b226932ddd052c6cd5edb73772";
        };
      r2 = {
        nix = import ../hackage/bytehash-0.1.0.0-r2-0f7b097d08aed28fa8ede710c73e3da86283f47af23b8d5afff8c9e94b05042d.nix;
        revNum = 2;
        sha256 = "0f7b097d08aed28fa8ede710c73e3da86283f47af23b8d5afff8c9e94b05042d";
        };
      default = "r2";
      };
    };
  }