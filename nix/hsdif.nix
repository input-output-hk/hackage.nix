{
  "0.11" = {
    sha256 = "381615ed89cf7a115dddd8912fe23d70630325b0f16dd06bb08e6e2f9f4cfdd4";
    revisions = {
      r0 = {
        nix = import ../hackage/hsdif-0.11-r0-9fd23afea1810ae21b1e28baf78c7485b982c1585b8f51cfa31bf62143589862.nix;
        revNum = 0;
        sha256 = "9fd23afea1810ae21b1e28baf78c7485b982c1585b8f51cfa31bf62143589862";
      };
      default = "r0";
    };
  };
  "0.12" = {
    sha256 = "d53e3d4b45e72527c76a66da2a229cbc91c4cd040b40803c81300aa54643ece2";
    revisions = {
      r0 = {
        nix = import ../hackage/hsdif-0.12-r0-28cae2f65f08a274950a1da92043b4a686f6531d8c1b023e23b142da86ced3b6.nix;
        revNum = 0;
        sha256 = "28cae2f65f08a274950a1da92043b4a686f6531d8c1b023e23b142da86ced3b6";
      };
      default = "r0";
    };
  };
  "0.14" = {
    sha256 = "b54676cfaaf943ad1a1dcf605524e57568caf47e26768c0325cedf8abed1b5f3";
    revisions = {
      r0 = {
        nix = import ../hackage/hsdif-0.14-r0-bd7213a190b48db42578356f112b9b443d62fea1c67d283dbb41f1d69f324ef8.nix;
        revNum = 0;
        sha256 = "bd7213a190b48db42578356f112b9b443d62fea1c67d283dbb41f1d69f324ef8";
      };
      default = "r0";
    };
  };
}