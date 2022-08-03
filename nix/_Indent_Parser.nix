{
  "0.1" = {
    sha256 = "f011afdadc9db3931defad0ada62612dc6b6d0d9b5d97548d37653cfae5466d5";
    revisions = {
      r0 = {
        nix = import ../hackage/IndentParser-0.1-r0-be990a072693cf2bd74ede2b8f1ec95393e0203c705a140b0253823d1c228701.nix;
        revNum = 0;
        sha256 = "be990a072693cf2bd74ede2b8f1ec95393e0203c705a140b0253823d1c228701";
        };
      r1 = {
        nix = import ../hackage/IndentParser-0.1-r1-99557d3b7e720167e16ff7615b00ef48216e93ec9606be4bf042f51fba8f6dfe.nix;
        revNum = 1;
        sha256 = "99557d3b7e720167e16ff7615b00ef48216e93ec9606be4bf042f51fba8f6dfe";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "529635953f554291a05ac7f29844448277e5c38470b96b4509e588ce502d9456";
    revisions = {
      r0 = {
        nix = import ../hackage/IndentParser-0.2-r0-60b10f50f99a8c8bb7e604e884984eedbd51493f5c7d65eb4906132569950fa5.nix;
        revNum = 0;
        sha256 = "60b10f50f99a8c8bb7e604e884984eedbd51493f5c7d65eb4906132569950fa5";
        };
      default = "r0";
      };
    };
  "0.2.1" = {
    sha256 = "520c9d235ff0afb9ce771bf1b596a5096c46e2204eb1be299670032b5a453351";
    revisions = {
      r0 = {
        nix = import ../hackage/IndentParser-0.2.1-r0-aeb06227b0dd0eaad61b5c7dd3dd2a20bdedee1e24d9b63a53d6e1bee94a1ac5.nix;
        revNum = 0;
        sha256 = "aeb06227b0dd0eaad61b5c7dd3dd2a20bdedee1e24d9b63a53d6e1bee94a1ac5";
        };
      default = "r0";
      };
    };
  }