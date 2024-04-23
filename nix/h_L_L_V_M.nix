{
  "0.5.0.0" = {
    sha256 = "47561176e44742efb401b8abf00b3c768e1176e3841b1367ec50fb0352f46c73";
    revisions = {
      r0 = {
        nix = import ../hackage/hLLVM-0.5.0.0-r0-30e728d6fc06f9261b4193a16b63763a7ff5f3a3938a31e5fe269b668ceac8c0.nix;
        revNum = 0;
        sha256 = "30e728d6fc06f9261b4193a16b63763a7ff5f3a3938a31e5fe269b668ceac8c0";
      };
      default = "r0";
    };
  };
  "0.5.0.1" = {
    sha256 = "ff73d243cc6f59d49b14e23ce37678372d236144e46781082ea287a8c301c257";
    revisions = {
      r0 = {
        nix = import ../hackage/hLLVM-0.5.0.1-r0-4909da570d59f4dd63a36a6476e2a9c746d96bb045cd67b5cf86d077fbec60e1.nix;
        revNum = 0;
        sha256 = "4909da570d59f4dd63a36a6476e2a9c746d96bb045cd67b5cf86d077fbec60e1";
      };
      default = "r0";
    };
  };
}