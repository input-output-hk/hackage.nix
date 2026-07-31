{
  "0.1.0.0" = {
    sha256 = "039d2c647ddac3a93d0b51b88c86657b0653a04c613029d3ac50d6fa8a4ad26b";
    revisions = {
      r0 = {
        nix = import ../hackage/kioku-migrations-0.1.0.0-r0-3e1e25b7efec4e478ab5a242ac13039f4282216e751c6e12b7db8ec6914d5fe0.nix;
        revNum = 0;
        sha256 = "3e1e25b7efec4e478ab5a242ac13039f4282216e751c6e12b7db8ec6914d5fe0";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8d571d455b4fbac13e2fc01665796b2d553e8d0058918383130cf6db97c6a5c0";
    revisions = {
      r0 = {
        nix = import ../hackage/kioku-migrations-0.2.0.0-r0-6d63bd62c00df129e397c30202223ea0b84e0d907d30f009cb68283f1d02713e.nix;
        revNum = 0;
        sha256 = "6d63bd62c00df129e397c30202223ea0b84e0d907d30f009cb68283f1d02713e";
      };
      default = "r0";
    };
  };
}