{
  "0.1.0.0" = {
    sha256 = "18b7f0861aaed310508e54bd3b286c8dd5819ffde4a517aba23c2bafbee5187c";
    revisions = {
      r0 = {
        nix = import ../hackage/record-gl-0.1.0.0-r0-6802b2afd99bdf55669c39ce82156c7bba7b9d46e1bdb994b0d12ba94137c790.nix;
        revNum = 0;
        sha256 = "6802b2afd99bdf55669c39ce82156c7bba7b9d46e1bdb994b0d12ba94137c790";
      };
      r1 = {
        nix = import ../hackage/record-gl-0.1.0.0-r1-6d2017f9112690ce717a1bb7dad9d2d4272b01b4bce8ee3ae79247f97f277d85.nix;
        revNum = 1;
        sha256 = "6d2017f9112690ce717a1bb7dad9d2d4272b01b4bce8ee3ae79247f97f277d85";
      };
      default = "r1";
    };
  };
}