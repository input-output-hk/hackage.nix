{
  "0.0.1" = {
    sha256 = "43c5c293cab10304cef2117f3631b47b3a666e38ad7dc3ccf702b3b27044d7b8";
    revisions = {
      r0 = {
        nix = import ../hackage/snaplet-auth-acid-0.0.1-r0-39a473c9d8509601266213b21608726fabb24708f31bec036590a9e9295225ef.nix;
        revNum = 0;
        sha256 = "39a473c9d8509601266213b21608726fabb24708f31bec036590a9e9295225ef";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "95eb134e5ef69c03f42778e1c6acd075e975d741db767712dd716e21b3f01744";
    revisions = {
      r0 = {
        nix = import ../hackage/snaplet-auth-acid-0.1.0-r0-6aca5a56ae6c79e39e9ab7f54ba098b52935d4fffd2eb9c18d578d610ed47752.nix;
        revNum = 0;
        sha256 = "6aca5a56ae6c79e39e9ab7f54ba098b52935d4fffd2eb9c18d578d610ed47752";
      };
      default = "r0";
    };
  };
}