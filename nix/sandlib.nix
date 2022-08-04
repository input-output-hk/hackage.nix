{
  "0.0.1" = {
    sha256 = "d3cb5010eb9dfd35d4be1e7798052e023e9269310e88a874ba31cc8d3af0e129";
    revisions = {
      r0 = {
        nix = import ../hackage/sandlib-0.0.1-r0-08867297304a94ed6f7224fbcd1ddce7827bc89b5dc641387e934cefe849ef9a.nix;
        revNum = 0;
        sha256 = "08867297304a94ed6f7224fbcd1ddce7827bc89b5dc641387e934cefe849ef9a";
        };
      default = "r0";
      };
    };
  "0.0.2" = {
    sha256 = "7d5e80bf57f477f3a9fff60a28b507e2e5a1ace3756169fbdec6dd4cd436901f";
    revisions = {
      r0 = {
        nix = import ../hackage/sandlib-0.0.2-r0-3daee4b93c3ce0089085c87a4655548e267843946ece8df35daf7536978f4475.nix;
        revNum = 0;
        sha256 = "3daee4b93c3ce0089085c87a4655548e267843946ece8df35daf7536978f4475";
        };
      default = "r0";
      };
    };
  }