{
  "0.5" = {
    sha256 = "1e21a5aae7b4514e0175a8247ee667a9e88961a8aae533123b2c15652d415ebb";
    revisions = {
      r0 = {
        nix = import ../hackage/sexp-0.5-r0-272d6f2e4241e5a1d6baf1f65351135c5ab904b37737118f1a734799a27b9b89.nix;
        revNum = 0;
        sha256 = "272d6f2e4241e5a1d6baf1f65351135c5ab904b37737118f1a734799a27b9b89";
      };
      r1 = {
        nix = import ../hackage/sexp-0.5-r1-c5b1d4429308c5361cca9a53eacd76bc407ebe367e4db326fb0accf9cf968564.nix;
        revNum = 1;
        sha256 = "c5b1d4429308c5361cca9a53eacd76bc407ebe367e4db326fb0accf9cf968564";
      };
      default = "r1";
    };
  };
  "0.6" = {
    sha256 = "e60469961d79ce436db24c8fd17651b5bebad3eca6208a61279ce469d8b6ba4e";
    revisions = {
      r0 = {
        nix = import ../hackage/sexp-0.6-r0-51304dbf5c5950cc7c6358e5cfa0edff0ce13f994bc08d687f9f43e913df4abd.nix;
        revNum = 0;
        sha256 = "51304dbf5c5950cc7c6358e5cfa0edff0ce13f994bc08d687f9f43e913df4abd";
      };
      r1 = {
        nix = import ../hackage/sexp-0.6-r1-6567515606616a0d5511674257a2bedbf144866af04579b6716453344deb77cc.nix;
        revNum = 1;
        sha256 = "6567515606616a0d5511674257a2bedbf144866af04579b6716453344deb77cc";
      };
      default = "r1";
    };
  };
  "0.7" = {
    sha256 = "568cc9f7256e9235906322600976be22d6803baef4ff42bad7a9eaf5ad9974a5";
    revisions = {
      r0 = {
        nix = import ../hackage/sexp-0.7-r0-0fef328a621ec00ea27bb94e39675c85c607061b667f560577fb47e4cff9229e.nix;
        revNum = 0;
        sha256 = "0fef328a621ec00ea27bb94e39675c85c607061b667f560577fb47e4cff9229e";
      };
      r1 = {
        nix = import ../hackage/sexp-0.7-r1-38cf8e03418b29142d808718c807f4c472436a7cfd3cc07c80633c0d9f218ee9.nix;
        revNum = 1;
        sha256 = "38cf8e03418b29142d808718c807f4c472436a7cfd3cc07c80633c0d9f218ee9";
      };
      default = "r1";
    };
  };
}