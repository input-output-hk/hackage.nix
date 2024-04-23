{
  "0.1.0.0" = {
    sha256 = "8c189ee9a0659ecc0b77302b1f823dde588540c3b5216a9b2571507652bd5293";
    revisions = {
      r0 = {
        nix = import ../hackage/parochial-0.1.0.0-r0-5670eb79c94e7818c686472409ce2eacda760f60a66450b3d23e2b21d64d5e06.nix;
        revNum = 0;
        sha256 = "5670eb79c94e7818c686472409ce2eacda760f60a66450b3d23e2b21d64d5e06";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "4765cb95f2798e9707aa163f63632f27cd81a7d14e2c858e766ceb6169166469";
    revisions = {
      r0 = {
        nix = import ../hackage/parochial-0.2.0.0-r0-c329e37a574594e84ce37b48cd0de06d804bea7b3d0d0ab1f4535e3ce0d960dc.nix;
        revNum = 0;
        sha256 = "c329e37a574594e84ce37b48cd0de06d804bea7b3d0d0ab1f4535e3ce0d960dc";
      };
      default = "r0";
    };
  };
}