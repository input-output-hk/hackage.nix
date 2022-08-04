{
  "0.1.0.0" = {
    sha256 = "5c56103d9e3aa39498ffa8a4970c2d3943fa12df0ac34e412d33db13fbbf0045";
    revisions = {
      r0 = {
        nix = import ../hackage/large-generics-0.1.0.0-r0-89f6233b5bdad21ac881043b04724b0b68d6f342bf1cb71eed7e2100bc830784.nix;
        revNum = 0;
        sha256 = "89f6233b5bdad21ac881043b04724b0b68d6f342bf1cb71eed7e2100bc830784";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "e1a78fbdb813e94cd0fdc5f939b506dbb99ce36b4d7da922559cb1e5f96fde5f";
    revisions = {
      r0 = {
        nix = import ../hackage/large-generics-0.2.0.0-r0-d79bafe75f1df2d3a930f78451cf8e2f4dedd9a8dea3c6f69de0168eec0b800a.nix;
        revNum = 0;
        sha256 = "d79bafe75f1df2d3a930f78451cf8e2f4dedd9a8dea3c6f69de0168eec0b800a";
        };
      r1 = {
        nix = import ../hackage/large-generics-0.2.0.0-r1-18551694243f5862dd4fc810718fd2e799ec14e330db392a50ef98b1e938191e.nix;
        revNum = 1;
        sha256 = "18551694243f5862dd4fc810718fd2e799ec14e330db392a50ef98b1e938191e";
        };
      default = "r1";
      };
    };
  }