{
  "0.1.0" = {
    sha256 = "ba86a882293f9fea89e85040ca8cbaaeee095c0e10c697a54551004f0166f832";
    revisions = {
      r0 = {
        nix = import ../hackage/pgvector-0.1.0-r0-8de6096739109e1dab3b7d3d087e08743a073e9dd568c46134b4099f0661cca6.nix;
        revNum = 0;
        sha256 = "8de6096739109e1dab3b7d3d087e08743a073e9dd568c46134b4099f0661cca6";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "880d8477eba3f4783705d1c92b4de84b0210ef9ed9a7b123e5e470b8e24c8f71";
    revisions = {
      r0 = {
        nix = import ../hackage/pgvector-0.1.1-r0-24ce054cde2319cd606b9f2abd8fc1a333eb45f9bbcbeb6440a1aa8a03d650b1.nix;
        revNum = 0;
        sha256 = "24ce054cde2319cd606b9f2abd8fc1a333eb45f9bbcbeb6440a1aa8a03d650b1";
      };
      default = "r0";
    };
  };
}