{
  "0.1.0.0" = {
    sha256 = "2ada38aeedef8e976ee216244b8d5c9f589a9b1e6886294ce54f21cc9f8b001f";
    revisions = {
      r0 = {
        nix = import ../hackage/merkle-log-0.1.0.0-r0-13031901546b7a1ef19ebf2cb3295e3ef1ab87f720581247fb041921b20d1882.nix;
        revNum = 0;
        sha256 = "13031901546b7a1ef19ebf2cb3295e3ef1ab87f720581247fb041921b20d1882";
        };
      r1 = {
        nix = import ../hackage/merkle-log-0.1.0.0-r1-3932fa2bc42165c07d3ae9accc98f46692d3c85ff7c4b39ace15f4baa9d33fef.nix;
        revNum = 1;
        sha256 = "3932fa2bc42165c07d3ae9accc98f46692d3c85ff7c4b39ace15f4baa9d33fef";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "41ee8e51b95c4a5bddeeadf5223f4e1c6ec290b38dafad1212c090bd7ad2469d";
    revisions = {
      r0 = {
        nix = import ../hackage/merkle-log-0.1.1-r0-12d9b78d1e3aa3b4bca748c13a5ea9cf037e5b19ee35ccd5722e5db8053545f7.nix;
        revNum = 0;
        sha256 = "12d9b78d1e3aa3b4bca748c13a5ea9cf037e5b19ee35ccd5722e5db8053545f7";
        };
      default = "r0";
      };
    };
  "0.2.0" = {
    sha256 = "80366fec1ddd5bb69aae8458d2f13b74ea015c040eb5071e08d375f1807a996c";
    revisions = {
      r0 = {
        nix = import ../hackage/merkle-log-0.2.0-r0-aca9b06b87928eccc1da4e4c53449548903b92e6ed742f5f7a5825a26f14a62d.nix;
        revNum = 0;
        sha256 = "aca9b06b87928eccc1da4e4c53449548903b92e6ed742f5f7a5825a26f14a62d";
        };
      default = "r0";
      };
    };
  }