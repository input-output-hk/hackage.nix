{
  "0.0" = {
    sha256 = "77102fd6a79b75c98cdce10a40a746430a7a85d6cccebe70dff81b5072f68c6c";
    revisions = {
      r0 = {
        nix = import ../hackage/poll-0.0-r0-85c3e333e23aa53b223b0085bcd5282bad0fc5fecd357e4f10f929eb4cd1b55c.nix;
        revNum = 0;
        sha256 = "85c3e333e23aa53b223b0085bcd5282bad0fc5fecd357e4f10f929eb4cd1b55c";
        };
      default = "r0";
      };
    };
  "0.0.0.1" = {
    sha256 = "b9fe87fe1b4d3ecb2ad3c1c290e231b0c93d498f0d318f67018a1dde97a0ed29";
    revisions = {
      r0 = {
        nix = import ../hackage/poll-0.0.0.1-r0-eeae185ceeae313250d750984483471ffcd6f6cad5657ab32c42138dedb1dd6e.nix;
        revNum = 0;
        sha256 = "eeae185ceeae313250d750984483471ffcd6f6cad5657ab32c42138dedb1dd6e";
        };
      default = "r0";
      };
    };
  "0.0.0.2" = {
    sha256 = "8248d3758ea60655ac7da34640f31ab07dd11bf41f04b60899e79a943d8194ae";
    revisions = {
      r0 = {
        nix = import ../hackage/poll-0.0.0.2-r0-6079190e040fa4f08462aca90614948f190c944570793105a7158560ecc3003e.nix;
        revNum = 0;
        sha256 = "6079190e040fa4f08462aca90614948f190c944570793105a7158560ecc3003e";
        };
      r1 = {
        nix = import ../hackage/poll-0.0.0.2-r1-58b81442490a9d059330efbd114440492a693a68b2ea4eb941f981cb14daf015.nix;
        revNum = 1;
        sha256 = "58b81442490a9d059330efbd114440492a693a68b2ea4eb941f981cb14daf015";
        };
      default = "r1";
      };
    };
  }