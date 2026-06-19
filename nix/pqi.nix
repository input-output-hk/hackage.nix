{
  "0.0.1.0" = {
    sha256 = "00ef095a9f0ca8fa2c81c7999ac1254765d017bd51b57416dd4e65c36ae0f6d5";
    revisions = {
      r0 = {
        nix = import ../hackage/pqi-0.0.1.0-r0-d09ea007c18b5da38ba569446d81a624fc99c930a1e74067cd06fc496eb13596.nix;
        revNum = 0;
        sha256 = "d09ea007c18b5da38ba569446d81a624fc99c930a1e74067cd06fc496eb13596";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "d8a4066ff14bf1723eee037df63fdf1ac59f547dd098cc44c6b0e92c8e3ac9b6";
    revisions = {
      r0 = {
        nix = import ../hackage/pqi-0.0.1.1-r0-ca410fb3b0013a490abc66dd9d6292d8ca48dbd1d8ce964661a8d8c83a2d16d0.nix;
        revNum = 0;
        sha256 = "ca410fb3b0013a490abc66dd9d6292d8ca48dbd1d8ce964661a8d8c83a2d16d0";
      };
      default = "r0";
    };
  };
}