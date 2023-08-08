{
  "0.0.3" = {
    sha256 = "49731738d02da634519c3d1649b13c59c1759b67a5265be878536c003cd7d8aa";
    revisions = {
      r0 = {
        nix = import ../hackage/brassica-0.0.3-r0-96b6ca16232f12403b2849366b42fb3f5683062b83648bc81e2885b387de3738.nix;
        revNum = 0;
        sha256 = "96b6ca16232f12403b2849366b42fb3f5683062b83648bc81e2885b387de3738";
        };
      r1 = {
        nix = import ../hackage/brassica-0.0.3-r1-acf1350ea02aaa30da0e869be504b0e8ec6784db74bb40840c878eef86017b2b.nix;
        revNum = 1;
        sha256 = "acf1350ea02aaa30da0e869be504b0e8ec6784db74bb40840c878eef86017b2b";
        };
      default = "r1";
      };
    };
  "0.1.0" = {
    sha256 = "c00288d08cfe78dbb5b96cfcedd14bdba096789dd31cb0798c6296ced66476c2";
    revisions = {
      r0 = {
        nix = import ../hackage/brassica-0.1.0-r0-5f398f472dba6377320670a4b51f4946b7f6b01a019c32668474933d2cf430b6.nix;
        revNum = 0;
        sha256 = "5f398f472dba6377320670a4b51f4946b7f6b01a019c32668474933d2cf430b6";
        };
      default = "r0";
      };
    };
  "0.1.1" = {
    sha256 = "69fd2cdc137ef1d15f80d99f1146ff2322a23d67d7fb0b5dd898a4ef3dc78335";
    revisions = {
      r0 = {
        nix = import ../hackage/brassica-0.1.1-r0-fd0db06d1361196f196c5010fff2ed6aa09d292c264ef4994ed5744ad85ba621.nix;
        revNum = 0;
        sha256 = "fd0db06d1361196f196c5010fff2ed6aa09d292c264ef4994ed5744ad85ba621";
        };
      default = "r0";
      };
    };
  }